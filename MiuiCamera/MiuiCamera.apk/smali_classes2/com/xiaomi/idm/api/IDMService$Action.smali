.class public abstract Lcom/xiaomi/idm/api/IDMService$Action;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/idm/api/IDMService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public aid:I

.field public service:Lcom/xiaomi/idm/api/IDMService;


# direct methods
.method public constructor <init>(ILcom/xiaomi/idm/api/IDMService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/xiaomi/idm/api/IDMService$Action;->aid:I

    iput-object p2, p0, Lcom/xiaomi/idm/api/IDMService$Action;->service:Lcom/xiaomi/idm/api/IDMService;

    return-void
.end method


# virtual methods
.method public getAid()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/idm/api/IDMService$Action;->aid:I

    return v0
.end method

.method public getServiceUUID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/idm/api/IDMService$Action;->service:Lcom/xiaomi/idm/api/IDMService;

    invoke-virtual {v0}, Lcom/xiaomi/idm/api/IDMService;->getUUID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract invoke()[B
.end method

.method public abstract parseResponse([B)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TT;"
        }
    .end annotation
.end method

.method public abstract toBytes()[B
.end method
