.class public interface abstract Ljava8/util/stream/Sink$OfLong;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava8/util/stream/Sink;
.implements Ljava8/util/function/LongConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OfLong"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava8/util/stream/Sink<",
        "Ljava/lang/Long;",
        ">;",
        "Ljava8/util/function/LongConsumer;"
    }
.end annotation


# virtual methods
.method public abstract accept(J)V
.end method

.method public abstract accept(Ljava/lang/Long;)V
.end method
