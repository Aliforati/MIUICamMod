.class public final synthetic LOooO0O0/OooO0OO/OooO00o/OooO0Oo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/camera/fragment/dialog/BaseDialogFragment$DismissCallback;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/Camera;

.field private final synthetic OooO0O0:Lcom/android/camera/data/data/global/DataItemGlobal;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/Camera;Lcom/android/camera/data/data/global/DataItemGlobal;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0OO/OooO00o/OooO0Oo;->OooO00o:Lcom/android/camera/Camera;

    iput-object p2, p0, LOooO0O0/OooO0OO/OooO00o/OooO0Oo;->OooO0O0:Lcom/android/camera/data/data/global/DataItemGlobal;

    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .locals 2

    iget-object v0, p0, LOooO0O0/OooO0OO/OooO00o/OooO0Oo;->OooO00o:Lcom/android/camera/Camera;

    iget-object v1, p0, LOooO0O0/OooO0OO/OooO00o/OooO0Oo;->OooO0O0:Lcom/android/camera/data/data/global/DataItemGlobal;

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->OooO00o(Lcom/android/camera/data/data/global/DataItemGlobal;)V

    return-void
.end method
