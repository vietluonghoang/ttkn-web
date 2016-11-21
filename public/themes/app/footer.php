    <?php if ( ! isset($show) || $show == true) : ?>

    <footer class="footer">
        <div class="container" style="color:white;font-family: Consolas;text-align: right;">
            <p>Truytimkhachno.com</p>
        </div>
    </footer>
    <?php endif; ?>
	<div id="debug"><!-- Stores the Profiler Results --></div>
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jqueryui/1.10.4/jquery-ui.min.js"></script>
    <?php echo Assets::js(); ?>
</body>
</html>