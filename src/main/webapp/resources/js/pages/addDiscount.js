$(function() {
	$
			.Class(
					'defysope.addDiscount.Main',
					{},
					{
						init : function(el, options) {
							this.el = $(el);
							$.extend(this.options, options);
							this.prg = options.product;
							this.product =[];
							$('select[name="productgroup"]').select2().on('change',this.callback('filterProduct'));
							$('input[name="product"]').select2({
								data:this.product
							});

						},
						filterProduct:function(e){
							this.product.length=0;
							var grpId = $('select[name="productgroup"]').val();
							for(var i=0;i<this.prg.length;i++){
								if(this.prg[i].grp == grpId){
									var obj={};
									obj['id']=this.prg[i].id;
									obj['text']=this.prg[i].text;
									this.product.push(obj);
								}
							}
						}

					});
});