$(function(){
    $('body').one('focus', '[data-component-type="decimal"]', function(event) {
    	$(this).priceFormat({
    		prefix: '',
    	    centsSeparator: ',',
    	    thousandsSeparator: '.',
    	    limit: 7
    	});
    });
});