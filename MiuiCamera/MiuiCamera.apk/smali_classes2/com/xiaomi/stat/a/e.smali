.class public Lcom/xiaomi/stat/a/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/xiaomi/stat/a/k;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:[Lcom/xiaomi/stat/a/b;

.field public final synthetic b:Lcom/xiaomi/stat/a/c;


# direct methods
.method public constructor <init>(Lcom/xiaomi/stat/a/c;[Lcom/xiaomi/stat/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/stat/a/e;->b:Lcom/xiaomi/stat/a/c;

    iput-object p2, p0, Lcom/xiaomi/stat/a/e;->a:[Lcom/xiaomi/stat/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/xiaomi/stat/a/k;
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/stat/a/e;->b:Lcom/xiaomi/stat/a/c;

    iget-object v1, p0, Lcom/xiaomi/stat/a/e;->a:[Lcom/xiaomi/stat/a/b;

    invoke-static {v0, v1}, Lcom/xiaomi/stat/a/c;->a(Lcom/xiaomi/stat/a/c;[Lcom/xiaomi/stat/a/b;)Lcom/xiaomi/stat/a/k;

    move-result-object v0

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/stat/a/e;->a()Lcom/xiaomi/stat/a/k;

    move-result-object v0

    return-object v0
.end method
