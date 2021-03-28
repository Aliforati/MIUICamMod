.class public Lmiuix/animation/listener/ListenerNotifier$ListenerNode;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/animation/listener/ListenerNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListenerNode"
.end annotation


# instance fields
.field public bindTag:Ljava/lang/Object;

.field public listener:Lmiuix/animation/listener/TransitionListener;

.field public next:Lmiuix/animation/listener/ListenerNotifier$ListenerNode;

.field public prev:Lmiuix/animation/listener/ListenerNotifier$ListenerNode;

.field public relatedProperty:[Lmiuix/animation/property/FloatProperty;

.field public toTag:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lmiuix/animation/listener/ListenerNotifier$1;)V
    .locals 0

    invoke-direct {p0}, Lmiuix/animation/listener/ListenerNotifier$ListenerNode;-><init>()V

    return-void
.end method
