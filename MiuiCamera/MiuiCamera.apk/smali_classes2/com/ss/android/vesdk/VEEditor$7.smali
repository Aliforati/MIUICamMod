.class public Lcom/ss/android/vesdk/VEEditor$7;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ss/android/ttve/nativePort/NativeCallbacks$IGetImageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/VEEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/ss/android/vesdk/VEEditor;


# direct methods
.method public constructor <init>(Lcom/ss/android/vesdk/VEEditor;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/vesdk/VEEditor$7;->this$0:Lcom/ss/android/vesdk/VEEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageData([BIII)I
    .locals 1

    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor$7;->this$0:Lcom/ss/android/vesdk/VEEditor;

    invoke-static {v0}, Lcom/ss/android/vesdk/VEEditor;->access$900(Lcom/ss/android/vesdk/VEEditor;)Lcom/ss/android/vesdk/VEListener$VEGetImageListener;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 p1, -0x64

    return p1

    :cond_0
    if-nez p1, :cond_1

    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    const/16 p2, 0x1015

    iput p2, p1, Landroid/os/Message;->what:I

    iget-object p2, p0, Lcom/ss/android/vesdk/VEEditor$7;->this$0:Lcom/ss/android/vesdk/VEEditor;

    invoke-static {p2}, Lcom/ss/android/vesdk/VEEditor;->access$500(Lcom/ss/android/vesdk/VEEditor;)Lcom/ss/android/vesdk/VEEditor$VEEditorMessageHandler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 p1, 0x0

    return p1

    :cond_1
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor$7;->this$0:Lcom/ss/android/vesdk/VEEditor;

    invoke-static {v0}, Lcom/ss/android/vesdk/VEEditor;->access$900(Lcom/ss/android/vesdk/VEEditor;)Lcom/ss/android/vesdk/VEListener$VEGetImageListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/ss/android/vesdk/VEListener$VEGetImageListener;->onGetImageData([BIII)I

    move-result p1

    return p1
.end method
