.class public final Ljava8/util/concurrent/TLRandom$1;
.super Ljava/lang/ThreadLocal;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/concurrent/TLRandom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Ljava8/util/concurrent/TLRandom$SeedsHolder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ljava8/util/concurrent/TLRandom$1;->initialValue()Ljava8/util/concurrent/TLRandom$SeedsHolder;

    move-result-object v0

    return-object v0
.end method

.method public initialValue()Ljava8/util/concurrent/TLRandom$SeedsHolder;
    .locals 2

    new-instance v0, Ljava8/util/concurrent/TLRandom$SeedsHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava8/util/concurrent/TLRandom$SeedsHolder;-><init>(Ljava8/util/concurrent/TLRandom$1;)V

    return-object v0
.end method
