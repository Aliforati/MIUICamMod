.class public final synthetic Ljava8/util/Spliterators$OfLong$$Lambda$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava8/util/function/LongConsumer;


# instance fields
.field public final arg$1:Ljava8/util/function/Consumer;


# direct methods
.method public constructor <init>(Ljava8/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava8/util/Spliterators$OfLong$$Lambda$1;->arg$1:Ljava8/util/function/Consumer;

    return-void
.end method

.method public static lambdaFactory$(Ljava8/util/function/Consumer;)Ljava8/util/function/LongConsumer;
    .locals 1

    new-instance v0, Ljava8/util/Spliterators$OfLong$$Lambda$1;

    invoke-direct {v0, p0}, Ljava8/util/Spliterators$OfLong$$Lambda$1;-><init>(Ljava8/util/function/Consumer;)V

    return-object v0
.end method


# virtual methods
.method public accept(J)V
    .locals 1

    iget-object v0, p0, Ljava8/util/Spliterators$OfLong$$Lambda$1;->arg$1:Ljava8/util/function/Consumer;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava8/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method
