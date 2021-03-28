.class public Lcom/ss/android/vesdk/VEEditor$9$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/VEEditor$9;->onCallback(IIFLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/ss/android/vesdk/VEEditor$9;


# direct methods
.method public constructor <init>(Lcom/ss/android/vesdk/VEEditor$9;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/vesdk/VEEditor$9$1;->this$0:Lcom/ss/android/vesdk/VEEditor$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor$9$1;->this$0:Lcom/ss/android/vesdk/VEEditor$9;

    iget-object v0, v0, Lcom/ss/android/vesdk/VEEditor$9;->val$mVideoCompiler:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEEditor;->destroy()V

    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor$9$1;->this$0:Lcom/ss/android/vesdk/VEEditor$9;

    iget-object v0, v0, Lcom/ss/android/vesdk/VEEditor$9;->val$listener:Lcom/ss/android/vesdk/VEListener$VEEditorGenReverseListener;

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/ss/android/vesdk/VEListener$VEEditorGenReverseListener;->onReverseDone(I)V

    :cond_0
    return-void
.end method
