.class public Lcom/bumptech/glide/request/transition/BitmapTransitionFactory;
.super Lcom/bumptech/glide/request/transition/BitmapContainerTransitionFactory;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/request/transition/BitmapContainerTransitionFactory<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/request/transition/TransitionFactory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/transition/TransitionFactory<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/bumptech/glide/request/transition/BitmapContainerTransitionFactory;-><init>(Lcom/bumptech/glide/request/transition/TransitionFactory;)V

    return-void
.end method


# virtual methods
.method public getBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    return-object p1
.end method

.method public bridge synthetic getBitmap(Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/request/transition/BitmapTransitionFactory;->getBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method
