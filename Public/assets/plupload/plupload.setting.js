var uploader = new plupload.Uploader({
	runtimes : 'html5,flash',
	browse_button : 'pickfiles', // you can pass in id...
	container: document.getElementById('uploader'), // ... or DOM Element itself
	url : upload_url,
	flash_swf_url : app_path+'/Public/assets/plupload/Moxie.swf',	
	
	filters : {
		max_file_size : '10mb',
		mime_types: [
			{title : "Image files", extensions : "jpg,gif,png"},
			{title : "Zip files", extensions : "zip"}
		]
	},

	init: {
		PostInit: function() {
			if($("#uploader .tbody").length>0){
				$("#uploader .tbody .loading").css("width","100%");
				$("#uploader .thead").show();
				$("#uploader .tbody").each(function(){
					id=$(this).attr("filename");
					filename=$(this).attr("filename");
					size=$(this).attr("size");
					file=new plupload.File(id,filename,size);
					file.status=plupload.DONE;
					count=uploader.files.length;
					uploader.files[count]=file;
				})
			}
		},

		FilesAdded: function(up, files) {
			for(var i in files){
				html='<li class="tbody" id="'+files[i].id+'">\n';
				html+='<div class="loading"></div>\n';
				html+='<div class="data">\n';
				html+='<span class="del text-center"><a class="link del">删除</a></span>\n';
				html+='<span class="size text-right">'+plupload.formatSize(files[i].size)+'</span>';
				html+='<span class="auto autocut">'+files[i].name+'</span>';
				html+='</li>';
				html+='</div>\n';
				$('#file_list').append(html);
			}			
			up.start();
		},

		UploadProgress: function(up, file) {
			$("#"+file.id).find("a.del").hide();
			$("#"+file.id).find('.loading').css("width",file.percent+"%");
		},

		FileUploaded: function(up, file,data) {			
			var myObject = eval('(' + data.response + ')');			
			if(myObject.status){
				if($("#add_file").length!=0){
					$("#add_file").val($("#add_file").val()+myObject.id+";")
				}
				$("#"+file.id).attr("add_file",myObject.id);
				if($("#save_name").length!=0){
					$("#save_name").val($("#save_name").val()+myObject.savename+";")
				}
				$("#"+file.id).find("a.del").show();
			}else{
				alert(myObject.message);
			}
		}
	}
});

uploader.init();
