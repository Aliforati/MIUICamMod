.class public Lcom/android/camera/module/Camera2Module$10;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/Camera2Module;->startCount(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/module/Camera2Module;

.field public final synthetic val$count:I

.field public final synthetic val$mode:I

.field public final synthetic val$repeatTimes:I


# direct methods
.method public constructor <init>(Lcom/android/camera/module/Camera2Module;III)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/Camera2Module$10;->this$0:Lcom/android/camera/module/Camera2Module;

    iput p2, p0, Lcom/android/camera/module/Camera2Module$10;->val$count:I

    iput p3, p0, Lcom/android/camera/module/Camera2Module$10;->val$repeatTimes:I

    iput p4, p0, Lcom/android/camera/module/Camera2Module$10;->val$mode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/module/Camera2Module$10;->this$0:Lcom/android/camera/module/Camera2Module;

    iget v1, p0, Lcom/android/camera/module/Camera2Module$10;->val$count:I

    iget v2, p0, Lcom/android/camera/module/Camera2Module$10;->val$repeatTimes:I

    iget v3, p0, Lcom/android/camera/module/Camera2Module$10;->val$mode:I

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/module/Camera2Module;->access$3400(Lcom/android/camera/module/Camera2Module;III)V

    return-void
.end method
