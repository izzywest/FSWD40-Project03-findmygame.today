<?php $pageTitle='About'; ?>
<?php include('inc/head.php'); ?>
   <div id="about" class="background-image"></div> 
    <!--Content-->
    <main class="top-margin">
        <div class="content">
            
            <!--Modal TRIGGERS-->
            <!--Trigger ONE -->
            <button class="myBtn_multi">ONE</button>
            <!--Trigger TWO -->
            <button class="myBtn_multi">TWO</button>

            <!--Modal ONE -->
            <div class="modal modal_multi">
                <!-- Modal content -->
                <div class="modal-content">
                    <span class="close close_multi">×</span>
                    <p>ONE</p>
                </div>
            </div>

            <!-- Modal TWO -->
            <div class="modal modal_multi">
                <!-- Modal content -->
                <div class="modal-content">
                    <span class="close close_multi">×</span>
                    <p>TWO</p>
                </div>
            </div>

        </div>
        <aside>
            Display w/e data here
        </aside> 
    </main>

<!-- modal script only needed in about.php -->
<script src="js/modal.js"></script>

<?php include('inc/footer.php'); ?>