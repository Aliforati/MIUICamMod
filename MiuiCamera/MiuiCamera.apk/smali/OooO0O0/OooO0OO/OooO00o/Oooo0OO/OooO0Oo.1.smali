.class public final synthetic LOooO0O0/OooO0OO/OooO00o/Oooo0OO/OooO0Oo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/zoommap/ZoomMapController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/zoommap/ZoomMapController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0OO/OooO00o/Oooo0OO/OooO0Oo;->OooO00o:Lcom/android/camera/zoommap/ZoomMapController;

    return-void
.end method


# virtual methods
.method public final onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    iget-object v0, p0, LOooO0O0/OooO0OO/OooO00o/Oooo0OO/OooO0Oo;->OooO00o:Lcom/android/camera/zoommap/ZoomMapController;

    invoke-virtual {v0, p1}, Lcom/android/camera/zoommap/ZoomMapController;->OooO00o(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method
