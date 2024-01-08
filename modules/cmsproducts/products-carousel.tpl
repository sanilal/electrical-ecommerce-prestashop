{literal}
<script>
    document.addEventListener("DOMContentLoaded", function (event) {
        var {/literal}homefeatured{$id_hpp}{literal} = $('.{/literal}hpp{$id_hpp}{literal} .products').lightSlider(
            {
                item: 4,
                loop: false,
                slideMove: 1,
                speed: 600,
                pager: 1,
                loop: 0,
                controls: false,
                pauseOnHover: true,
                auto: false,
                responsive: [
                    {
                        breakpoint: 800,
                        settings: {
                            item: 2,
                            slideMove: 1,
                            slideMargin: 6,
                        }
                    },
                    {
                        breakpoint: 480,
                        settings: {
                            item: 1,
                            slideMove: 1
                        }
                    }
                ]
            }
        );

        $('.hppb{/literal}{$id_hpp}{literal}').click(function () {
            {/literal}homefeatured{$id_hpp}{literal}.goToPrevSlide();
        });
        $('.hppf{/literal}{$id_hpp}{literal}').click(function () {
            {/literal}homefeatured{$id_hpp}{literal}.goToNextSlide();
        });


    });
</script>
{/literal}