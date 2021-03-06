<package-10000011>

    <home-wbs-header></home-wbs-header>

    <page-tab-with-section core={page_tabs} callback={clickTab}></page-tab-with-section>

    <div class="tab-contents-area">
        <package-10000011-readme class="hide"></package-10000011-readme>
        <home-wbs-structure    class="hide"></home-wbs-structure>
    </div>

    <section-footer></section-footer>

    <script>
     this.page_tabs = new PageTabs([
         {code: 'readme',       label: 'README', tag: 'package-10000011-readme' },
         {code: 'installation', label: 'Wnqi',   tag: 'home-wbs-structure' },
     ]);

     this.on('mount', () => {
         this.page_tabs.switchTab(this.tags)
         this.update();
     });

     this.clickTab = (e, action, data) => {
         if (this.page_tabs.switchTab(this.tags, data.code))
             this.update();
     };
    </script>

</package-10000011>
