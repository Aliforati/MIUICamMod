.class public final synthetic LOooO0O0/OooO0OO/OooO00o/OooOOo/o00000oO/OooO;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic OooO00o:I

.field private final synthetic OooO0O0:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(ILandroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LOooO0O0/OooO0OO/OooO00o/OooOOo/o00000oO/OooO;->OooO00o:I

    iput-object p2, p0, LOooO0O0/OooO0OO/OooO00o/OooOOo/o00000oO/OooO;->OooO0O0:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, LOooO0O0/OooO0OO/OooO00o/OooOOo/o00000oO/OooO;->OooO00o:I

    iget-object v1, p0, LOooO0O0/OooO0OO/OooO00o/OooOOo/o00000oO/OooO;->OooO0O0:Landroid/graphics/Rect;

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$DualVideoRenderProtocol;

    invoke-static {v0, v1, p1}, Lcom/android/camera/dualvideo/view/TouchEventView$TouchHelper;->OooO00o(ILandroid/graphics/Rect;Lcom/android/camera/protocol/ModeProtocol$DualVideoRenderProtocol;)V

    return-void
.end method
