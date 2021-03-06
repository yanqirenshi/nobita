<hearts_tab_home>

    <section class="section">
        <div class="container">
            <h1 class="title is-4">概要</h1>
            <h2 class="subtitle"></h2>

            <div class="contents">
                <p>Rhythm の heart クラスを継承しています。</p>
                <p>Rhythm の heart クラスでその核を定期的に実行します。</p>
            </div>
        </div>
    </section>

    <!-- ---------------------------------------------------------------- -->
    <!-- ----START------------------------------------------------------- -->
    <!-- ---------------------------------------------------------------- -->
    <section class="section">
        <div class="container">
            <h1 class="title is-4">心臓には核があります。</h1>
            <h2 class="subtitle"></h2>

            <div class="contents">
                <p>それは心臓の機能そのものです。</p>
                <p>その核が定期的に実行されます。</p>
            </div>
        </div>
    </section>

    <section class="section">
        <div class="container">
            <h1 class="title is-4">心臓が流すもの</h1>
            <h2 class="subtitle"></h2>

            <div class="contents">
                <p>友情を流れるもの。それは情報です。</p>
                <p>友情を流すものとして心臓があります。</p>
            </div>
        </div>
    </section>

    <section class="section">
        <div class="container">
            <h1 class="title is-4">心臓が負うもの</h1>
            <h2 class="subtitle"></h2>

            <div class="contents">
                <p>心臓はカルマを負います。</p>
                <p>そしてカルマの数だけ核を実行し友情に情報を流します。</p>
            </div>
        </div>
    </section>

    <section class="section">
        <div class="container">
            <h1 class="title is-4">心臓の数</h1>
            <h2 class="subtitle"></h2>

            <div class="contents">
                <p>Nobit@ は上級魔族なので八つの心臓を持っています。</p>
                <p>この心臓が友情に情報を流通させます。</p>
            </div>
        </div>
    </section>

    <section class="section">
        <div class="container">
            <h1 class="title is-4">Operators:</h1>

            <div class="contents">
                <operators-table targets={targets.operators}
                                 link-prefix={location.hash}></operators-table>
            </div>
        </div>
    </section>

    <section class="section">
        <div class="container">
            <h1 class="title is-4">Classes:</h1>

            <div class="contents">
                <classes-table targets={targets.classes}
                               link-prefix={location.hash}></classes-table>
            </div>
        </div>
    </section>
    <!-- ---------------------------------------------------------------- -->
    <!-- ----END--------------------------------------------------------- -->
    <!-- ---------------------------------------------------------------- -->

    <script>
     this.targets = {
         operators: [
             'tick!',
             'make-heart',
             'start-heart',
             'stop-heart',
         ],
         classes: [
             'nobiheart',
         ],
     };
    </script>
</hearts_tab_home>
