.class public final Lcom/ss/android/vesdk/VEEditor$8;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ss/android/vesdk/VECommonCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/VEEditor;->genReverseVideo(Lcom/ss/android/vesdk/runtime/VEEditorResManager;Lcom/ss/android/vesdk/VETimelineParams;IILcom/ss/android/vesdk/VEListener$VEEditorGenReverseListener;)Lcom/ss/android/vesdk/VEEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic val$allIVideoPath:Ljava/lang/String;

.field public final synthetic val$listener:Lcom/ss/android/vesdk/VEListener$VEEditorGenReverseListener;

.field public final synthetic val$mVideoCompiler:Lcom/ss/android/vesdk/VEEditor;

.field public final synthetic val$resManager:Lcom/ss/android/vesdk/runtime/VEEditorResManager;

.field public final synthetic val$reverseVideoPath:Ljava/lang/String;

.field public final synthetic val$separateAudioPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/ss/android/vesdk/VEEditor;Ljava/lang/String;Ljava/lang/String;Lcom/ss/android/vesdk/runtime/VEEditorResManager;Ljava/lang/String;Lcom/ss/android/vesdk/VEListener$VEEditorGenReverseListener;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/vesdk/VEEditor$8;->val$mVideoCompiler:Lcom/ss/android/vesdk/VEEditor;

    iput-object p2, p0, Lcom/ss/android/vesdk/VEEditor$8;->val$allIVideoPath:Ljava/lang/String;

    iput-object p3, p0, Lcom/ss/android/vesdk/VEEditor$8;->val$reverseVideoPath:Ljava/lang/String;

    iput-object p4, p0, Lcom/ss/android/vesdk/VEEditor$8;->val$resManager:Lcom/ss/android/vesdk/runtime/VEEditorResManager;

    iput-object p5, p0, Lcom/ss/android/vesdk/VEEditor$8;->val$separateAudioPath:Ljava/lang/String;

    iput-object p6, p0, Lcom/ss/android/vesdk/VEEditor$8;->val$listener:Lcom/ss/android/vesdk/VEListener$VEEditorGenReverseListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(IIFLjava/lang/String;)V
    .locals 0

    const/16 p2, 0x1007

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/ss/android/vesdk/VEEditor$8;->val$mVideoCompiler:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEEditor;->isValid()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/ss/android/vesdk/VEEditor$8;->val$allIVideoPath:Ljava/lang/String;

    iget-object p2, p0, Lcom/ss/android/vesdk/VEEditor$8;->val$reverseVideoPath:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->reverseAllIVideo(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lcom/ss/android/vesdk/VEEditor$8$1;

    invoke-direct {p2, p0}, Lcom/ss/android/vesdk/VEEditor$8$1;-><init>(Lcom/ss/android/vesdk/VEEditor$8;)V

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_1
    :goto_0
    return-void
.end method
