.class public final Lmiuix/animation/listener/ListenerNotifier$2;
.super Lmiuix/animation/listener/ListenerNotifier$SingleNotifier;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/animation/listener/ListenerNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmiuix/animation/listener/ListenerNotifier$SingleNotifier;-><init>(Lmiuix/animation/listener/ListenerNotifier$1;)V

    return-void
.end method


# virtual methods
.method public doNotify(Lmiuix/animation/listener/ListenerNotifier$ListenerNode;Ljava/lang/Object;Lmiuix/animation/listener/UpdateInfo;)V
    .locals 0

    iget-object p1, p1, Lmiuix/animation/listener/ListenerNotifier$ListenerNode;->listener:Lmiuix/animation/listener/TransitionListener;

    invoke-virtual {p1, p2, p3}, Lmiuix/animation/listener/TransitionListener;->onBegin(Ljava/lang/Object;Lmiuix/animation/listener/UpdateInfo;)V

    return-void
.end method
