.class public Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$7;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ss/android/vesdk/VECommonCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->initCombineListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$7;->this$0:Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(IIFLjava/lang/String;)V
    .locals 0

    const/16 p2, 0x1002

    const-string p3, "FullScreen"

    if-eq p1, p2, :cond_2

    const/16 p2, 0x1005

    if-eq p1, p2, :cond_3

    const/16 p2, 0x1007

    if-eq p1, p2, :cond_1

    const/16 p2, 0x1009

    if-eq p1, p2, :cond_3

    const/16 p2, 0x1010

    if-eq p1, p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "CombineCallback: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "CombineStart"

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$7;->this$0:Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;

    invoke-static {p1}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->access$800(Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;)V

    goto :goto_1

    :cond_2
    const-string p1, "play finished and loop"

    :goto_0
    invoke-static {p3, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    return-void
.end method
