.class public final synthetic LOooO0O0/OooO0OO/OooO00o/OooOoO0/OooOOoo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/camera/fragment/GoogleLensFragment$OnClickListener;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/module/Camera2Module;

.field private final synthetic OooO0O0:F

.field private final synthetic OooO0OO:F

.field private final synthetic OooO0Oo:I

.field private final synthetic OooO0o0:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/module/Camera2Module;FFII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0OO/OooO00o/OooOoO0/OooOOoo;->OooO00o:Lcom/android/camera/module/Camera2Module;

    iput p2, p0, LOooO0O0/OooO0OO/OooO00o/OooOoO0/OooOOoo;->OooO0O0:F

    iput p3, p0, LOooO0O0/OooO0OO/OooO00o/OooOoO0/OooOOoo;->OooO0OO:F

    iput p4, p0, LOooO0O0/OooO0OO/OooO00o/OooOoO0/OooOOoo;->OooO0Oo:I

    iput p5, p0, LOooO0O0/OooO0OO/OooO00o/OooOoO0/OooOOoo;->OooO0o0:I

    return-void
.end method


# virtual methods
.method public final onOptionClick(I)V
    .locals 6

    iget-object v0, p0, LOooO0O0/OooO0OO/OooO00o/OooOoO0/OooOOoo;->OooO00o:Lcom/android/camera/module/Camera2Module;

    iget v1, p0, LOooO0O0/OooO0OO/OooO00o/OooOoO0/OooOOoo;->OooO0O0:F

    iget v2, p0, LOooO0O0/OooO0OO/OooO00o/OooOoO0/OooOOoo;->OooO0OO:F

    iget v3, p0, LOooO0O0/OooO0OO/OooO00o/OooOoO0/OooOOoo;->OooO0Oo:I

    iget v4, p0, LOooO0O0/OooO0OO/OooO00o/OooOoO0/OooOOoo;->OooO0o0:I

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/module/Camera2Module;->OooO00o(FFIII)V

    return-void
.end method
