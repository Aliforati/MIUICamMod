.class public Lcom/xiaomi/idm/task/CallManager;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public mCalls:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/xiaomi/idm/task/CallFuture;",
            ">;"
        }
    .end annotation
.end field

.field public mIDM:Lcom/xiaomi/idm/api/IDM;


# direct methods
.method public constructor <init>(Lcom/xiaomi/idm/api/IDM;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/idm/task/CallManager;->mIDM:Lcom/xiaomi/idm/api/IDM;

    return-void
.end method
