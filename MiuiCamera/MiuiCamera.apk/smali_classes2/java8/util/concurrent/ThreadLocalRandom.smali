.class public Ljava8/util/concurrent/ThreadLocalRandom;
.super Ljava/util/Random;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava8/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;,
        Ljava8/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;,
        Ljava8/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;
    }
.end annotation


# static fields
.field public static final BAD_BOUND:Ljava/lang/String; = "bound must be positive"

.field public static final BAD_RANGE:Ljava/lang/String; = "bound must be greater than origin"

.field public static final BAD_SIZE:Ljava/lang/String; = "size must be non-negative"

.field public static final DOUBLE_UNIT:D = 1.1102230246251565E-16

.field public static final FLOAT_UNIT:F = 5.9604645E-8f

.field public static final instance:Ljava8/util/concurrent/ThreadLocalRandom;

.field public static final nextLocalGaussian:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field public static final serialPersistentFields:[Ljava/io/ObjectStreamField;

.field public static final serialVersionUID:J = 0x7e9c859e134009b3L


# instance fields
.field public initialized:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    new-instance v1, Ljava/io/ObjectStreamField;

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-string v3, "rnd"

    invoke-direct {v1, v3, v2}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-string v3, "initialized"

    invoke-direct {v1, v3, v2}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Ljava8/util/concurrent/ThreadLocalRandom;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Ljava8/util/concurrent/ThreadLocalRandom;->nextLocalGaussian:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava8/util/concurrent/ThreadLocalRandom;

    invoke-direct {v0}, Ljava8/util/concurrent/ThreadLocalRandom;-><init>()V

    sput-object v0, Ljava8/util/concurrent/ThreadLocalRandom;->instance:Ljava8/util/concurrent/ThreadLocalRandom;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/util/Random;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava8/util/concurrent/ThreadLocalRandom;->initialized:Z

    return-void
.end method

.method public static synthetic access$000(Ljava8/util/concurrent/ThreadLocalRandom;II)I
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava8/util/concurrent/ThreadLocalRandom;->internalNextInt(II)I

    move-result p0

    return p0
.end method

.method public static synthetic access$100(Ljava8/util/concurrent/ThreadLocalRandom;JJ)J
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Ljava8/util/concurrent/ThreadLocalRandom;->internalNextLong(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic access$200(Ljava8/util/concurrent/ThreadLocalRandom;DD)D
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Ljava8/util/concurrent/ThreadLocalRandom;->internalNextDouble(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static current()Ljava8/util/concurrent/ThreadLocalRandom;
    .locals 1

    invoke-static {}, Ljava8/util/concurrent/TLRandom;->getThreadLocalRandomProbe()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava8/util/concurrent/TLRandom;->localInit()V

    :cond_0
    sget-object v0, Ljava8/util/concurrent/ThreadLocalRandom;->instance:Ljava8/util/concurrent/ThreadLocalRandom;

    return-object v0
.end method

.method private final internalNextDouble(DD)D
    .locals 4

    invoke-virtual {p0}, Ljava8/util/concurrent/ThreadLocalRandom;->nextLong()J

    move-result-wide v0

    const/16 v2, 0xb

    ushr-long/2addr v0, v2

    long-to-double v0, v0

    const-wide/high16 v2, 0x3ca0000000000000L

    mul-double/2addr v0, v2

    cmpg-double v2, p1, p3

    if-gez v2, :cond_0

    sub-double v2, p3, p1

    mul-double/2addr v0, v2

    add-double/2addr v0, p1

    cmpl-double p1, v0, p3

    if-ltz p1, :cond_0

    invoke-static {p3, p4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p1

    const-wide/16 p3, 0x1

    sub-long/2addr p1, p3

    invoke-static {p1, p2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    :cond_0
    return-wide v0
.end method

.method private final internalNextInt(II)I
    .locals 5

    invoke-direct {p0}, Ljava8/util/concurrent/ThreadLocalRandom;->nextSeed()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava8/util/concurrent/TLRandom;->mix32(J)I

    move-result v0

    if-ge p1, p2, :cond_4

    sub-int v1, p2, p1

    add-int/lit8 v2, v1, -0x1

    and-int v3, v1, v2

    if-nez v3, :cond_1

    and-int p2, v0, v2

    :cond_0
    add-int v0, p2, p1

    goto :goto_2

    :cond_1
    if-lez v1, :cond_2

    ushr-int/lit8 p2, v0, 0x1

    :goto_0
    add-int v0, p2, v2

    rem-int/2addr p2, v1

    sub-int/2addr v0, p2

    if-gez v0, :cond_0

    invoke-direct {p0}, Ljava8/util/concurrent/ThreadLocalRandom;->nextSeed()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava8/util/concurrent/TLRandom;->mix32(J)I

    move-result p2

    ushr-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-lt v0, p1, :cond_3

    if-lt v0, p2, :cond_4

    :cond_3
    invoke-direct {p0}, Ljava8/util/concurrent/ThreadLocalRandom;->nextSeed()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava8/util/concurrent/TLRandom;->mix32(J)I

    move-result v0

    goto :goto_1

    :cond_4
    :goto_2
    return v0
.end method

.method private final internalNextLong(JJ)J
    .locals 10

    invoke-direct {p0}, Ljava8/util/concurrent/ThreadLocalRandom;->nextSeed()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava8/util/concurrent/TLRandom;->mix64(J)J

    move-result-wide v0

    cmp-long v2, p1, p3

    if-gez v2, :cond_4

    sub-long v2, p3, p1

    const-wide/16 v4, 0x1

    sub-long v4, v2, v4

    and-long v6, v2, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    and-long p3, v0, v4

    add-long v0, p3, p1

    goto :goto_2

    :cond_0
    cmp-long v6, v2, v8

    if-lez v6, :cond_2

    const/4 p3, 0x1

    :goto_0
    ushr-long/2addr v0, p3

    add-long v6, v0, v4

    rem-long/2addr v0, v2

    sub-long/2addr v6, v0

    cmp-long p4, v6, v8

    if-gez p4, :cond_1

    invoke-direct {p0}, Ljava8/util/concurrent/ThreadLocalRandom;->nextSeed()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava8/util/concurrent/TLRandom;->mix64(J)J

    move-result-wide v0

    goto :goto_0

    :cond_1
    add-long/2addr v0, p1

    goto :goto_2

    :cond_2
    :goto_1
    cmp-long v2, v0, p1

    if-ltz v2, :cond_3

    cmp-long v2, v0, p3

    if-ltz v2, :cond_4

    :cond_3
    invoke-direct {p0}, Ljava8/util/concurrent/ThreadLocalRandom;->nextSeed()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava8/util/concurrent/TLRandom;->mix64(J)J

    move-result-wide v0

    goto :goto_1

    :cond_4
    :goto_2
    return-wide v0
.end method

.method private final nextSeed()J
    .locals 2

    invoke-static {}, Ljava8/util/concurrent/TLRandom;->nextSeed()J

    move-result-wide v0

    return-wide v0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Ljava8/util/concurrent/ThreadLocalRandom;->current()Ljava8/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    return-object v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 4

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v0

    invoke-static {}, Ljava8/util/concurrent/TLRandom;->getThreadLocalRandomSeed()J

    move-result-wide v1

    const-string v3, "rnd"

    invoke-virtual {v0, v3, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;J)V

    const-string v1, "initialized"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Z)V

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    return-void
.end method


# virtual methods
.method public doubles()Ljava8/util/stream/DoubleStream;
    .locals 10

    new-instance v9, Ljava8/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;

    const-wide/16 v1, 0x0

    const-wide v3, 0x7fffffffffffffffL

    const-wide v5, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const-wide/16 v7, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Ljava8/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;-><init>(JJDD)V

    const/4 v0, 0x0

    invoke-static {v9, v0}, Ljava8/util/stream/StreamSupport;->doubleStream(Ljava8/util/Spliterator$OfDouble;Z)Ljava8/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public doubles(DD)Ljava8/util/stream/DoubleStream;
    .locals 10

    cmpg-double v0, p1, p3

    if-gez v0, :cond_0

    new-instance v0, Ljava8/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;

    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    move-object v1, v0

    move-wide v6, p1

    move-wide v8, p3

    invoke-direct/range {v1 .. v9}, Ljava8/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;-><init>(JJDD)V

    const/4 p1, 0x0

    invoke-static {v0, p1}, Ljava8/util/stream/StreamSupport;->doubleStream(Ljava8/util/Spliterator$OfDouble;Z)Ljava8/util/stream/DoubleStream;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bound must be greater than origin"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public doubles(J)Ljava8/util/stream/DoubleStream;
    .locals 10

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    new-instance v0, Ljava8/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;

    const-wide/16 v2, 0x0

    const-wide v6, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const-wide/16 v8, 0x0

    move-object v1, v0

    move-wide v4, p1

    invoke-direct/range {v1 .. v9}, Ljava8/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;-><init>(JJDD)V

    const/4 p1, 0x0

    invoke-static {v0, p1}, Ljava8/util/stream/StreamSupport;->doubleStream(Ljava8/util/Spliterator$OfDouble;Z)Ljava8/util/stream/DoubleStream;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "size must be non-negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public doubles(JDD)Ljava8/util/stream/DoubleStream;
    .locals 11

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    cmpg-double v0, p3, p5

    if-gez v0, :cond_0

    new-instance v0, Ljava8/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;

    const-wide/16 v3, 0x0

    move-object v2, v0

    move-wide v5, p1

    move-wide v7, p3

    move-wide/from16 v9, p5

    invoke-direct/range {v2 .. v10}, Ljava8/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;-><init>(JJDD)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava8/util/stream/StreamSupport;->doubleStream(Ljava8/util/Spliterator$OfDouble;Z)Ljava8/util/stream/DoubleStream;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bound must be greater than origin"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public ints()Ljava8/util/stream/IntStream;
    .locals 8

    new-instance v7, Ljava8/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;

    const-wide/16 v1, 0x0

    const-wide v3, 0x7fffffffffffffffL

    const v5, 0x7fffffff

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Ljava8/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;-><init>(JJII)V

    const/4 v0, 0x0

    invoke-static {v7, v0}, Ljava8/util/stream/StreamSupport;->intStream(Ljava8/util/Spliterator$OfInt;Z)Ljava8/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public ints(II)Ljava8/util/stream/IntStream;
    .locals 8

    if-ge p1, p2, :cond_0

    new-instance v7, Ljava8/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;

    const-wide/16 v1, 0x0

    const-wide v3, 0x7fffffffffffffffL

    move-object v0, v7

    move v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Ljava8/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;-><init>(JJII)V

    const/4 p1, 0x0

    invoke-static {v7, p1}, Ljava8/util/stream/StreamSupport;->intStream(Ljava8/util/Spliterator$OfInt;Z)Ljava8/util/stream/IntStream;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bound must be greater than origin"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public ints(J)Ljava8/util/stream/IntStream;
    .locals 8

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    new-instance v0, Ljava8/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;

    const-wide/16 v2, 0x0

    const v6, 0x7fffffff

    const/4 v7, 0x0

    move-object v1, v0

    move-wide v4, p1

    invoke-direct/range {v1 .. v7}, Ljava8/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;-><init>(JJII)V

    const/4 p1, 0x0

    invoke-static {v0, p1}, Ljava8/util/stream/StreamSupport;->intStream(Ljava8/util/Spliterator$OfInt;Z)Ljava8/util/stream/IntStream;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "size must be non-negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public ints(JII)Ljava8/util/stream/IntStream;
    .locals 8

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    if-ge p3, p4, :cond_0

    new-instance v0, Ljava8/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;

    const-wide/16 v2, 0x0

    move-object v1, v0

    move-wide v4, p1

    move v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v7}, Ljava8/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;-><init>(JJII)V

    const/4 p1, 0x0

    invoke-static {v0, p1}, Ljava8/util/stream/StreamSupport;->intStream(Ljava8/util/Spliterator$OfInt;Z)Ljava8/util/stream/IntStream;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bound must be greater than origin"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "size must be non-negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public longs()Ljava8/util/stream/LongStream;
    .locals 10

    new-instance v9, Ljava8/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;

    const-wide/16 v1, 0x0

    const-wide v3, 0x7fffffffffffffffL

    const-wide v5, 0x7fffffffffffffffL

    const-wide/16 v7, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Ljava8/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;-><init>(JJJJ)V

    const/4 v0, 0x0

    invoke-static {v9, v0}, Ljava8/util/stream/StreamSupport;->longStream(Ljava8/util/Spliterator$OfLong;Z)Ljava8/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public longs(J)Ljava8/util/stream/LongStream;
    .locals 10

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    new-instance v0, Ljava8/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;

    const-wide/16 v2, 0x0

    const-wide v6, 0x7fffffffffffffffL

    const-wide/16 v8, 0x0

    move-object v1, v0

    move-wide v4, p1

    invoke-direct/range {v1 .. v9}, Ljava8/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;-><init>(JJJJ)V

    const/4 p1, 0x0

    invoke-static {v0, p1}, Ljava8/util/stream/StreamSupport;->longStream(Ljava8/util/Spliterator$OfLong;Z)Ljava8/util/stream/LongStream;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "size must be non-negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public longs(JJ)Ljava8/util/stream/LongStream;
    .locals 10

    cmp-long v0, p1, p3

    if-gez v0, :cond_0

    new-instance v0, Ljava8/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;

    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    move-object v1, v0

    move-wide v6, p1

    move-wide v8, p3

    invoke-direct/range {v1 .. v9}, Ljava8/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;-><init>(JJJJ)V

    const/4 p1, 0x0

    invoke-static {v0, p1}, Ljava8/util/stream/StreamSupport;->longStream(Ljava8/util/Spliterator$OfLong;Z)Ljava8/util/stream/LongStream;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bound must be greater than origin"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public longs(JJJ)Ljava8/util/stream/LongStream;
    .locals 11

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    cmp-long v0, p3, p5

    if-gez v0, :cond_0

    new-instance v0, Ljava8/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;

    const-wide/16 v3, 0x0

    move-object v2, v0

    move-wide v5, p1

    move-wide v7, p3

    move-wide/from16 v9, p5

    invoke-direct/range {v2 .. v10}, Ljava8/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;-><init>(JJJJ)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava8/util/stream/StreamSupport;->longStream(Ljava8/util/Spliterator$OfLong;Z)Ljava8/util/stream/LongStream;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bound must be greater than origin"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public nextBoolean()Z
    .locals 2

    invoke-direct {p0}, Ljava8/util/concurrent/ThreadLocalRandom;->nextSeed()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava8/util/concurrent/TLRandom;->mix32(J)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public nextDouble()D
    .locals 4

    invoke-direct {p0}, Ljava8/util/concurrent/ThreadLocalRandom;->nextSeed()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava8/util/concurrent/TLRandom;->mix64(J)J

    move-result-wide v0

    const/16 v2, 0xb

    ushr-long/2addr v0, v2

    long-to-double v0, v0

    const-wide/high16 v2, 0x3ca0000000000000L

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public nextDouble(D)D
    .locals 4

    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    if-lez v0, :cond_1

    invoke-direct {p0}, Ljava8/util/concurrent/ThreadLocalRandom;->nextSeed()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava8/util/concurrent/TLRandom;->mix64(J)J

    move-result-wide v0

    const/16 v2, 0xb

    ushr-long/2addr v0, v2

    long-to-double v0, v0

    const-wide/high16 v2, 0x3ca0000000000000L

    mul-double/2addr v0, v2

    mul-double/2addr v0, p1

    cmpg-double v2, v0, p1

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p1

    const-wide/16 v0, 0x1

    sub-long/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bound must be positive"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public nextDouble(DD)D
    .locals 1

    cmpg-double v0, p1, p3

    if-gez v0, :cond_0

    invoke-direct {p0, p1, p2, p3, p4}, Ljava8/util/concurrent/ThreadLocalRandom;->internalNextDouble(DD)D

    move-result-wide p1

    return-wide p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bound must be greater than origin"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public nextFloat()F
    .locals 2

    invoke-direct {p0}, Ljava8/util/concurrent/ThreadLocalRandom;->nextSeed()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava8/util/concurrent/TLRandom;->mix32(J)I

    move-result v0

    ushr-int/lit8 v0, v0, 0x8

    int-to-float v0, v0

    const/high16 v1, 0x33800000

    mul-float/2addr v0, v1

    return v0
.end method

.method public nextGaussian()D
    .locals 10

    sget-object v0, Ljava8/util/concurrent/ThreadLocalRandom;->nextLocalGaussian:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    if-eqz v0, :cond_0

    sget-object v1, Ljava8/util/concurrent/ThreadLocalRandom;->nextLocalGaussian:Ljava/lang/ThreadLocal;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Ljava8/util/concurrent/ThreadLocalRandom;->nextDouble()D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v4

    invoke-virtual {p0}, Ljava8/util/concurrent/ThreadLocalRandom;->nextDouble()D

    move-result-wide v6

    mul-double/2addr v6, v2

    sub-double/2addr v6, v4

    mul-double v2, v0, v0

    mul-double v8, v6, v6

    add-double/2addr v2, v8

    cmpl-double v4, v2, v4

    if-gez v4, :cond_0

    const-wide/16 v4, 0x0

    cmpl-double v4, v2, v4

    if-eqz v4, :cond_0

    const-wide/high16 v4, -0x4000000000000000L    # -2.0

    invoke-static {v2, v3}, Ljava/lang/StrictMath;->log(D)D

    move-result-wide v8

    mul-double/2addr v8, v4

    div-double/2addr v8, v2

    invoke-static {v8, v9}, Ljava/lang/StrictMath;->sqrt(D)D

    move-result-wide v2

    sget-object v4, Ljava8/util/concurrent/ThreadLocalRandom;->nextLocalGaussian:Ljava/lang/ThreadLocal;

    mul-double/2addr v6, v2

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public nextInt()I
    .locals 2

    invoke-direct {p0}, Ljava8/util/concurrent/ThreadLocalRandom;->nextSeed()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava8/util/concurrent/TLRandom;->mix32(J)I

    move-result v0

    return v0
.end method

.method public nextInt(I)I
    .locals 4

    if-lez p1, :cond_2

    invoke-direct {p0}, Ljava8/util/concurrent/ThreadLocalRandom;->nextSeed()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava8/util/concurrent/TLRandom;->mix32(J)I

    move-result v0

    add-int/lit8 v1, p1, -0x1

    and-int v2, p1, v1

    if-nez v2, :cond_0

    and-int p1, v0, v1

    goto :goto_1

    :cond_0
    :goto_0
    ushr-int/lit8 v0, v0, 0x1

    add-int v2, v0, v1

    rem-int/2addr v0, p1

    sub-int/2addr v2, v0

    if-gez v2, :cond_1

    invoke-direct {p0}, Ljava8/util/concurrent/ThreadLocalRandom;->nextSeed()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava8/util/concurrent/TLRandom;->mix32(J)I

    move-result v0

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_1
    return p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "bound must be positive"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public nextInt(II)I
    .locals 0

    if-ge p1, p2, :cond_0

    invoke-direct {p0, p1, p2}, Ljava8/util/concurrent/ThreadLocalRandom;->internalNextInt(II)I

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bound must be greater than origin"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public nextLong()J
    .locals 2

    invoke-direct {p0}, Ljava8/util/concurrent/ThreadLocalRandom;->nextSeed()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava8/util/concurrent/TLRandom;->mix64(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public nextLong(J)J
    .locals 9

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_2

    invoke-direct {p0}, Ljava8/util/concurrent/ThreadLocalRandom;->nextSeed()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava8/util/concurrent/TLRandom;->mix64(J)J

    move-result-wide v2

    const-wide/16 v4, 0x1

    sub-long v4, p1, v4

    and-long v6, p1, v4

    cmp-long v6, v6, v0

    if-nez v6, :cond_0

    and-long p1, v2, v4

    goto :goto_1

    :cond_0
    const/4 v6, 0x1

    :goto_0
    ushr-long/2addr v2, v6

    add-long v7, v2, v4

    rem-long/2addr v2, p1

    sub-long/2addr v7, v2

    cmp-long v7, v7, v0

    if-gez v7, :cond_1

    invoke-direct {p0}, Ljava8/util/concurrent/ThreadLocalRandom;->nextSeed()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava8/util/concurrent/TLRandom;->mix64(J)J

    move-result-wide v2

    goto :goto_0

    :cond_1
    move-wide p1, v2

    :goto_1
    return-wide p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bound must be positive"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public nextLong(JJ)J
    .locals 1

    cmp-long v0, p1, p3

    if-gez v0, :cond_0

    invoke-direct {p0, p1, p2, p3, p4}, Ljava8/util/concurrent/ThreadLocalRandom;->internalNextLong(JJ)J

    move-result-wide p1

    return-wide p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bound must be greater than origin"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSeed(J)V
    .locals 0

    iget-boolean p1, p0, Ljava8/util/concurrent/ThreadLocalRandom;->initialized:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
