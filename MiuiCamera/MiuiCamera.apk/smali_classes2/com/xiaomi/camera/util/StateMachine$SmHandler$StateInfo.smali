.class public Lcom/xiaomi/camera/util/StateMachine$SmHandler$StateInfo;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/camera/util/StateMachine$SmHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StateInfo"
.end annotation


# instance fields
.field public active:Z

.field public parentStateInfo:Lcom/xiaomi/camera/util/StateMachine$SmHandler$StateInfo;

.field public state:Lcom/xiaomi/camera/util/State;

.field public final synthetic this$0:Lcom/xiaomi/camera/util/StateMachine$SmHandler;


# direct methods
.method public constructor <init>(Lcom/xiaomi/camera/util/StateMachine$SmHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler$StateInfo;->this$0:Lcom/xiaomi/camera/util/StateMachine$SmHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/xiaomi/camera/util/StateMachine$SmHandler;Lcom/xiaomi/camera/util/StateMachine$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/camera/util/StateMachine$SmHandler$StateInfo;-><init>(Lcom/xiaomi/camera/util/StateMachine$SmHandler;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler$StateInfo;->state:Lcom/xiaomi/camera/util/State;

    invoke-virtual {v1}, Lcom/xiaomi/camera/util/State;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",active="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler$StateInfo;->active:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",parent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler$StateInfo;->parentStateInfo:Lcom/xiaomi/camera/util/StateMachine$SmHandler$StateInfo;

    if-nez v1, :cond_0

    const-string v1, "null"

    goto :goto_0

    :cond_0
    iget-object v1, v1, Lcom/xiaomi/camera/util/StateMachine$SmHandler$StateInfo;->state:Lcom/xiaomi/camera/util/State;

    invoke-virtual {v1}, Lcom/xiaomi/camera/util/State;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
