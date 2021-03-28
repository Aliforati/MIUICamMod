.class public Lcom/ss/android/vesdk/VEEditor$8$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/VEEditor$8;->onCallback(IIFLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/ss/android/vesdk/VEEditor$8;


# direct methods
.method public constructor <init>(Lcom/ss/android/vesdk/VEEditor$8;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/vesdk/VEEditor$8$1;->this$0:Lcom/ss/android/vesdk/VEEditor$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor$8$1;->this$0:Lcom/ss/android/vesdk/VEEditor$8;

    iget-object v0, v0, Lcom/ss/android/vesdk/VEEditor$8;->val$mVideoCompiler:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEEditor;->destroy()V

    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor$8$1;->this$0:Lcom/ss/android/vesdk/VEEditor$8;

    iget-object v1, v0, Lcom/ss/android/vesdk/VEEditor$8;->val$resManager:Lcom/ss/android/vesdk/runtime/VEEditorResManager;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    iget-object v4, v0, Lcom/ss/android/vesdk/VEEditor$8;->val$allIVideoPath:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iput-object v3, v1, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mVideoPaths:[Ljava/lang/String;

    new-array v3, v2, [Ljava/lang/String;

    iget-object v4, v0, Lcom/ss/android/vesdk/VEEditor$8;->val$separateAudioPath:Ljava/lang/String;

    aput-object v4, v3, v5

    iput-object v3, v1, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mReverseAudioPaths:[Ljava/lang/String;

    new-array v3, v2, [Ljava/lang/String;

    iget-object v4, v0, Lcom/ss/android/vesdk/VEEditor$8;->val$reverseVideoPath:Ljava/lang/String;

    aput-object v4, v3, v5

    iput-object v3, v1, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mReverseVideoPath:[Ljava/lang/String;

    iput-boolean v2, v1, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mReverseDone:Z

    iget-object v0, v0, Lcom/ss/android/vesdk/VEEditor$8;->val$listener:Lcom/ss/android/vesdk/VEListener$VEEditorGenReverseListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, v5}, Lcom/ss/android/vesdk/VEListener$VEEditorGenReverseListener;->onReverseDone(I)V

    :cond_0
    return-void
.end method
