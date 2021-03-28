.class public Lcom/ss/android/vesdk/TERecorder$RenderPictureOnImageListenerInvoker;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/TERecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RenderPictureOnImageListenerInvoker"
.end annotation


# instance fields
.field public mBitmap:Landroid/graphics/Bitmap;

.field public mListener:Lcom/ss/android/vesdk/TERecorder$OnPictureRenderListener;


# direct methods
.method public constructor <init>(Lcom/ss/android/vesdk/TERecorder$OnPictureRenderListener;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorder$RenderPictureOnImageListenerInvoker;->mListener:Lcom/ss/android/vesdk/TERecorder$OnPictureRenderListener;

    iput-object p2, p0, Lcom/ss/android/vesdk/TERecorder$RenderPictureOnImageListenerInvoker;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder$RenderPictureOnImageListenerInvoker;->mListener:Lcom/ss/android/vesdk/TERecorder$OnPictureRenderListener;

    iget-object v1, p0, Lcom/ss/android/vesdk/TERecorder$RenderPictureOnImageListenerInvoker;->mBitmap:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcom/ss/android/vesdk/TERecorder$OnPictureRenderListener;->onImage(Landroid/graphics/Bitmap;)V

    return-void
.end method
