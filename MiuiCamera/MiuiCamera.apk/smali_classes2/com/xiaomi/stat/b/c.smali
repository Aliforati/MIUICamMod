.class public Lcom/xiaomi/stat/b/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/xiaomi/stat/b/b;


# direct methods
.method public constructor <init>(Lcom/xiaomi/stat/b/b;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/stat/b/c;->a:Lcom/xiaomi/stat/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/xiaomi/stat/d/l;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/stat/b/c;->a:Lcom/xiaomi/stat/b/b;

    iget-object v0, v0, Lcom/xiaomi/stat/b/b;->a:Lcom/xiaomi/stat/b/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/xiaomi/stat/b/a;->a(ZZ)V

    invoke-static {}, Lcom/xiaomi/stat/b/i;->a()Lcom/xiaomi/stat/b/i;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/xiaomi/stat/b/i;->a(Z)V

    invoke-static {}, Lcom/xiaomi/stat/b/d;->a()Lcom/xiaomi/stat/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/stat/b/d;->b()Ljava/lang/String;

    :cond_0
    return-void
.end method
