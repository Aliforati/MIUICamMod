.class public final synthetic LOooO0O0/OooO0OO/OooO00o/Oooo0/OooO0oo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/ui/MutiStateButton;

.field private final synthetic OooO0O0:F

.field private final synthetic OooO0OO:F

.field private final synthetic OooO0Oo:F

.field private final synthetic OooO0o0:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/ui/MutiStateButton;FFFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0OO/OooO00o/Oooo0/OooO0oo;->OooO00o:Lcom/android/camera/ui/MutiStateButton;

    iput p2, p0, LOooO0O0/OooO0OO/OooO00o/Oooo0/OooO0oo;->OooO0O0:F

    iput p3, p0, LOooO0O0/OooO0OO/OooO00o/Oooo0/OooO0oo;->OooO0OO:F

    iput p4, p0, LOooO0O0/OooO0OO/OooO00o/Oooo0/OooO0oo;->OooO0Oo:F

    iput p5, p0, LOooO0O0/OooO0OO/OooO00o/Oooo0/OooO0oo;->OooO0o0:F

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    iget-object v0, p0, LOooO0O0/OooO0OO/OooO00o/Oooo0/OooO0oo;->OooO00o:Lcom/android/camera/ui/MutiStateButton;

    iget v1, p0, LOooO0O0/OooO0OO/OooO00o/Oooo0/OooO0oo;->OooO0O0:F

    iget v2, p0, LOooO0O0/OooO0OO/OooO00o/Oooo0/OooO0oo;->OooO0OO:F

    iget v3, p0, LOooO0O0/OooO0OO/OooO00o/Oooo0/OooO0oo;->OooO0Oo:F

    iget v4, p0, LOooO0O0/OooO0OO/OooO00o/Oooo0/OooO0oo;->OooO0o0:F

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/ui/MutiStateButton;->OooO00o(FFFFLandroid/animation/ValueAnimator;)V

    return-void
.end method
