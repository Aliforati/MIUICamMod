.class public final Ljava8/util/stream/Streams;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava8/util/stream/Streams$ConcatSpliterator;,
        Ljava8/util/stream/Streams$DoubleStreamBuilderImpl;,
        Ljava8/util/stream/Streams$LongStreamBuilderImpl;,
        Ljava8/util/stream/Streams$IntStreamBuilderImpl;,
        Ljava8/util/stream/Streams$StreamBuilderImpl;,
        Ljava8/util/stream/Streams$AbstractStreamBuilderImpl;,
        Ljava8/util/stream/Streams$RangeLongSpliterator;,
        Ljava8/util/stream/Streams$RangeIntSpliterator;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Error;

    const-string v1, "no instances"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static composeWithExceptions(Ljava/lang/Runnable;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Ljava8/util/stream/Streams$1;

    invoke-direct {v0, p0, p1}, Ljava8/util/stream/Streams$1;-><init>(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public static composedClose(Ljava8/util/stream/BaseStream;Ljava8/util/stream/BaseStream;)Ljava/lang/Runnable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/stream/BaseStream<",
            "**>;",
            "Ljava8/util/stream/BaseStream<",
            "**>;)",
            "Ljava/lang/Runnable;"
        }
    .end annotation

    new-instance v0, Ljava8/util/stream/Streams$2;

    invoke-direct {v0, p0, p1}, Ljava8/util/stream/Streams$2;-><init>(Ljava8/util/stream/BaseStream;Ljava8/util/stream/BaseStream;)V

    return-object v0
.end method
