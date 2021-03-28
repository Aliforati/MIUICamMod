.class public Lcom/android/camera/module/VideoModule$16;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/VideoModule;->setVideoCastState(Ljava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/module/VideoModule;

.field public final synthetic val$state:I


# direct methods
.method public constructor <init>(Lcom/android/camera/module/VideoModule;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/VideoModule$16;->this$0:Lcom/android/camera/module/VideoModule;

    iput p2, p0, Lcom/android/camera/module/VideoModule$16;->val$state:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/module/VideoModule$16;->this$0:Lcom/android/camera/module/VideoModule;

    iget v1, p0, Lcom/android/camera/module/VideoModule$16;->val$state:I

    invoke-static {v0, v1}, Lcom/android/camera/module/VideoModule;->access$1700(Lcom/android/camera/module/VideoModule;I)V

    return-void
.end method
