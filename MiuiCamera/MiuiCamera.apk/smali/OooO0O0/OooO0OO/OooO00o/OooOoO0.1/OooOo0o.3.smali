.class public final synthetic LOooO0O0/OooO0OO/OooO00o/OooOoO0/OooOo0o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/module/Camera2Module;

.field private final synthetic OooO0O0:Ljava/lang/String;

.field private final synthetic OooO0OO:Landroid/graphics/Bitmap;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/module/Camera2Module;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0OO/OooO00o/OooOoO0/OooOo0o;->OooO00o:Lcom/android/camera/module/Camera2Module;

    iput-object p2, p0, LOooO0O0/OooO0OO/OooO00o/OooOoO0/OooOo0o;->OooO0O0:Ljava/lang/String;

    iput-object p3, p0, LOooO0O0/OooO0OO/OooO00o/OooOoO0/OooOo0o;->OooO0OO:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, LOooO0O0/OooO0OO/OooO00o/OooOoO0/OooOo0o;->OooO00o:Lcom/android/camera/module/Camera2Module;

    iget-object v1, p0, LOooO0O0/OooO0OO/OooO00o/OooOoO0/OooOo0o;->OooO0O0:Ljava/lang/String;

    iget-object v2, p0, LOooO0O0/OooO0OO/OooO00o/OooOoO0/OooOo0o;->OooO0OO:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/module/Camera2Module;->OooO00o(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method
