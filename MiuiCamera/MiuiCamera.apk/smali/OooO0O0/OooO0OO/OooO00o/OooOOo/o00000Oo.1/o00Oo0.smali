.class public final synthetic LOooO0O0/OooO0OO/OooO00o/OooOOo/o00000Oo/o00Oo0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic OooO00o:F

.field private final synthetic OooO0O0:F


# direct methods
.method public synthetic constructor <init>(FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LOooO0O0/OooO0OO/OooO00o/OooOOo/o00000Oo/o00Oo0;->OooO00o:F

    iput p2, p0, LOooO0O0/OooO0OO/OooO00o/OooOOo/o00000Oo/o00Oo0;->OooO0O0:F

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget v0, p0, LOooO0O0/OooO0OO/OooO00o/OooOOo/o00000Oo/o00Oo0;->OooO00o:F

    iget v1, p0, LOooO0O0/OooO0OO/OooO00o/OooOOo/o00000Oo/o00Oo0;->OooO0O0:F

    check-cast p1, Lcom/android/camera/dualvideo/render/CameraItemInterface;

    invoke-static {v0, v1, p1}, Lcom/android/camera/dualvideo/render/RenderManager;->OooO0O0(FFLcom/android/camera/dualvideo/render/CameraItemInterface;)Z

    move-result p1

    return p1
.end method
