.class public final synthetic LOooO0O0/OooO0OO/OooO00o/OooOoO0/OoooOOO;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/module/DollyZoomModule;

.field private final synthetic OooO0O0:F

.field private final synthetic OooO0OO:Z

.field private final synthetic OooO0Oo:I

.field private final synthetic OooO0o0:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/module/DollyZoomModule;FZII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0OO/OooO00o/OooOoO0/OoooOOO;->OooO00o:Lcom/android/camera/module/DollyZoomModule;

    iput p2, p0, LOooO0O0/OooO0OO/OooO00o/OooOoO0/OoooOOO;->OooO0O0:F

    iput-boolean p3, p0, LOooO0O0/OooO0OO/OooO00o/OooOoO0/OoooOOO;->OooO0OO:Z

    iput p4, p0, LOooO0O0/OooO0OO/OooO00o/OooOoO0/OoooOOO;->OooO0Oo:I

    iput p5, p0, LOooO0O0/OooO0OO/OooO00o/OooOoO0/OoooOOO;->OooO0o0:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, LOooO0O0/OooO0OO/OooO00o/OooOoO0/OoooOOO;->OooO00o:Lcom/android/camera/module/DollyZoomModule;

    iget v1, p0, LOooO0O0/OooO0OO/OooO00o/OooOoO0/OoooOOO;->OooO0O0:F

    iget-boolean v2, p0, LOooO0O0/OooO0OO/OooO00o/OooOoO0/OoooOOO;->OooO0OO:Z

    iget v3, p0, LOooO0O0/OooO0OO/OooO00o/OooOoO0/OoooOOO;->OooO0Oo:I

    iget v4, p0, LOooO0O0/OooO0OO/OooO00o/OooOoO0/OoooOOO;->OooO0o0:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/camera/module/DollyZoomModule;->OooO00o(FZII)V

    return-void
.end method
