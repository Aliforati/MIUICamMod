.class public abstract Lcom/android/camera/features/gif/GifMediaPlayer$MiMediaProcessCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/xiaomi/Video2GifEditer/MediaProcess$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/features/gif/GifMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "MiMediaProcessCallback"
.end annotation


# instance fields
.field public target:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/camera/features/gif/GifMediaPlayer;


# direct methods
.method public constructor <init>(Lcom/android/camera/features/gif/GifMediaPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/features/gif/GifMediaPlayer$MiMediaProcessCallback;->this$0:Lcom/android/camera/features/gif/GifMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/camera/features/gif/GifMediaPlayer;Lcom/android/camera/features/gif/GifMediaPlayer$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/features/gif/GifMediaPlayer$MiMediaProcessCallback;-><init>(Lcom/android/camera/features/gif/GifMediaPlayer;)V

    return-void
.end method


# virtual methods
.method public getTarget()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer$MiMediaProcessCallback;->target:Ljava/lang/String;

    return-object v0
.end method

.method public setTarget(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/features/gif/GifMediaPlayer$MiMediaProcessCallback;->target:Ljava/lang/String;

    return-void
.end method
