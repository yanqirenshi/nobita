<home_sec_root>
    <section-header title="NOBIT@: Home"></section-header>

    <page-tab-with-section core={page_tabs} callback={clickTab}></page-tab-with-section>

    <div class="tab-contents-area">
        <home_tab_readme       class="hide"></home_tab_readme>
        <home_tab_installation class="hide"></home_tab_installation>
        <home_tab_usage        class="hide"></home_tab_usage>
        <home_tab_data-model   class="hide"></home_tab_data-model>
        <home_tab_packages     class="hide"></home_tab_packages>
        <home_tab_classes      class="hide"></home_tab_classes>
        <home_tab_operators    class="hide"></home_tab_operators>
        <home_tab_variables    class="hide"></home_tab_variables>
    </div>

    <section-footer></section-footer>

    <script>
     this.page_tabs = new PageTabs([
         {code: 'readme',       label: 'README',       tag: 'home_tab_readme' },
         {code: 'installation', label: 'Installation', tag: 'home_tab_installation' },
         {code: 'usage',        label: 'Usage',        tag: 'home_tab_usage' },
         {code: 'data-model',   label: 'Data Model',   tag: 'home_tab_data-model' },
         {code: 'packages',     label: 'Packages',     tag: 'home_tab_packages' },
         {code: 'classes',      label: 'Classes',      tag: 'home_tab_classes' },
         {code: 'operators',    label: 'Operators',    tag: 'home_tab_operators' },
         {code: 'variables',    label: 'Variables',    tag: 'home_tab_variables' },
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
</home_sec_root>
