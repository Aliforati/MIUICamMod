.class public Lcom/ss/android/vesdk/VEEditor$6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ss/android/ttve/nativePort/NativeCallbacks$IEncoderDataCallback;


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

    iput-object p1, p0, Lcom/ss/android/vesdk/VEEditor$6;->this$0:Lcom/ss/android/vesdk/VEEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompressBuffer([BIIZ)I
    .locals 1

    if-eqz p1, :cond_2

    if-ltz p2, :cond_2

    if-gtz p3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor$6;->this$0:Lcom/ss/android/vesdk/VEEditor;

    invoke-static {v0}, Lcom/ss/android/vesdk/VEEditor;->access$2200(Lcom/ss/android/vesdk/VEEditor;)Lcom/ss/android/vesdk/VEListener$VEEncoderListener;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, -0x2

    return p1

    :cond_1
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor$6;->this$0:Lcom/ss/android/vesdk/VEEditor;

    invoke-static {v0}, Lcom/ss/android/vesdk/VEEditor;->access$2200(Lcom/ss/android/vesdk/VEEditor;)Lcom/ss/android/vesdk/VEListener$VEEncoderListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/ss/android/vesdk/VEListener$VEEncoderListener;->onEncoderDataAvailable([BIIZ)V

    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_0
    const/4 p1, -0x1

    return p1
.end method
