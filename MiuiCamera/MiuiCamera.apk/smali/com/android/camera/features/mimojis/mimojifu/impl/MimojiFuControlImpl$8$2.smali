.class public Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl$8$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl$8;->onSceneBindEnd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl$8;


# direct methods
.method public constructor <init>(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl$8;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl$8$2;->this$1:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl$8$2;->this$1:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl$8;

    iget-object v0, v0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl$8;->this$0:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;

    invoke-static {v0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->access$1900(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;)V

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl$8$2;->this$1:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl$8;

    iget-object v0, v0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl$8;->this$0:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;

    invoke-static {v0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->access$100(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;)Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;->resetConfig()V

    return-void
.end method
