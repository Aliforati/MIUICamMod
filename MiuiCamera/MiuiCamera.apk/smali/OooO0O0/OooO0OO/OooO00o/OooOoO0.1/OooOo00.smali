.class public final synthetic LOooO0O0/OooO0OO/OooO00o/OooOoO0/OooOo00;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

.field private final synthetic OooO0O0:Landroid/graphics/Bitmap;

.field private final synthetic OooO0OO:[F

.field private final synthetic OooO0Oo:Landroid/util/Size;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;Landroid/graphics/Bitmap;[FLandroid/util/Size;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0OO/OooO00o/OooOoO0/OooOo00;->OooO00o:Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    iput-object p2, p0, LOooO0O0/OooO0OO/OooO00o/OooOoO0/OooOo00;->OooO0O0:Landroid/graphics/Bitmap;

    iput-object p3, p0, LOooO0O0/OooO0OO/OooO00o/OooOoO0/OooOo00;->OooO0OO:[F

    iput-object p4, p0, LOooO0O0/OooO0OO/OooO00o/OooOoO0/OooOo00;->OooO0Oo:Landroid/util/Size;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, LOooO0O0/OooO0OO/OooO00o/OooOoO0/OooOo00;->OooO00o:Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    iget-object v1, p0, LOooO0O0/OooO0OO/OooO00o/OooOoO0/OooOo00;->OooO0O0:Landroid/graphics/Bitmap;

    iget-object v2, p0, LOooO0O0/OooO0OO/OooO00o/OooOoO0/OooOo00;->OooO0OO:[F

    iget-object v3, p0, LOooO0O0/OooO0OO/OooO00o/OooOoO0/OooOo00;->OooO0Oo:Landroid/util/Size;

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/module/Camera2Module;->OooO00o(Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;Landroid/graphics/Bitmap;[FLandroid/util/Size;)V

    return-void
.end method
