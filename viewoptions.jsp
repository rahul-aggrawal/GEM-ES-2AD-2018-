<div class="row">
    <div class="col-md-2 col-sm-6 hidden-xs">
    <div class="btn-group btn-group-sm">
        <button type="button" id="list-view" class="btn btn-default" data-toggle="tooltip" title="List"><i class="fa fa-th-list"></i></button>
        <button type="button" id="grid-view" class="btn btn-default" data-toggle="tooltip" title="Grid"><i class="fa fa-th"></i></button>
    </div>
    </div>
    <div class="col-md-3 col-sm-6"></div>
    <div class="col-md-4 col-xs-6">
    <div class="form-group input-group input-group-sm">
        <label class="input-group-addon" for="input-sort">Sort By:</label>
        <select id="input-sort" class="form-control" onchange="location = this.value;">
            <option value="http://www.dailyshoping.in/site/index.php?route=product/category&amp;path=20&amp;sort=p.sort_order&amp;order=ASC" selected="selected">Default</option>
            <option value="http://www.dailyshoping.in/site/index.php?route=product/category&amp;path=20&amp;sort=pd.name&amp;order=ASC">Name (A - Z)</option>
            <option value="http://www.dailyshoping.in/site/index.php?route=product/category&amp;path=20&amp;sort=pd.name&amp;order=DESC">Name (Z - A)</option>
            <option value="http://www.dailyshoping.in/site/index.php?route=product/category&amp;path=20&amp;sort=p.price&amp;order=ASC">Price (Low &gt; High)</option>
            <option value="http://www.dailyshoping.in/site/index.php?route=product/category&amp;path=20&amp;sort=p.price&amp;order=DESC">Price (High &gt; Low)</option>
            <option value="http://www.dailyshoping.in/site/index.php?route=product/category&amp;path=20&amp;sort=rating&amp;order=DESC">Rating (Highest)</option>
            <option value="http://www.dailyshoping.in/site/index.php?route=product/category&amp;path=20&amp;sort=rating&amp;order=ASC">Rating (Lowest)</option>
            <option value="http://www.dailyshoping.in/site/index.php?route=product/category&amp;path=20&amp;sort=p.model&amp;order=ASC">Model (A - Z)</option>
            <option value="http://www.dailyshoping.in/site/index.php?route=product/category&amp;path=20&amp;sort=p.model&amp;order=DESC">Model (Z - A)</option>
        </select>
    </div>
    </div>
    <div class="col-md-3 col-xs-6">
    <div class="form-group input-group input-group-sm">
        <label class="input-group-addon" for="input-limit">Show:</label>
        <select id="input-limit" class="form-control" onchange="location = this.value;">
            <option value="http://www.dailyshoping.in/site/index.php?route=product/category&amp;path=20&amp;limit=15" selected="selected">15</option>
            <option value="http://www.dailyshoping.in/site/index.php?route=product/category&amp;path=20&amp;limit=25">25</option>
            <option value="http://www.dailyshoping.in/site/index.php?route=product/category&amp;path=20&amp;limit=50">50</option>
            <option value="http://www.dailyshoping.in/site/index.php?route=product/category&amp;path=20&amp;limit=75">75</option>
            <option value="http://www.dailyshoping.in/site/index.php?route=product/category&amp;path=20&amp;limit=100">100</option>
        </select>
    </div>
    </div>
</div>