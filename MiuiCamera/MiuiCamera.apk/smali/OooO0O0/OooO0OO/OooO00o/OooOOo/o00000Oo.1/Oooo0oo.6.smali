.class public final synthetic LOooO0O0/OooO0OO/OooO00o/OooOOo/o00000Oo/Oooo0oo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/dualvideo/render/CameraItemManager;

.field private final synthetic OooO0O0:F

.field private final synthetic OooO0OO:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/dualvideo/render/CameraItemManager;FLjava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0OO/OooO00o/OooOOo/o00000Oo/Oooo0oo;->OooO00o:Lcom/android/camera/dualvideo/render/CameraItemManager;

    iput p2, p0, LOooO0O0/OooO0OO/OooO00o/OooOOo/o00000Oo/Oooo0oo;->OooO0O0:F

    iput-object p3, p0, LOooO0O0/OooO0OO/OooO00o/OooOOo/o00000Oo/Oooo0oo;->OooO0OO:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, LOooO0O0/OooO0OO/OooO00o/OooOOo/o00000Oo/Oooo0oo;->OooO00o:Lcom/android/camera/dualvideo/render/CameraItemManager;

    iget v1, p0, LOooO0O0/OooO0OO/OooO00o/OooOOo/o00000Oo/Oooo0oo;->OooO0O0:F

    iget-object v2, p0, LOooO0O0/OooO0OO/OooO00o/OooOOo/o00000Oo/Oooo0oo;->OooO0OO:Ljava/util/List;

    check-cast p1, Lcom/android/camera/dualvideo/render/CameraItemInterface;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/camera/dualvideo/render/CameraItemManager;->OooO00o(FLjava/util/List;Lcom/android/camera/dualvideo/render/CameraItemInterface;)V

    return-void
.end method
