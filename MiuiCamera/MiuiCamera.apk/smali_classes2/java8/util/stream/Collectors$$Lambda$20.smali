.class public final synthetic Ljava8/util/stream/Collectors$$Lambda$20;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava8/util/function/BiConsumer;


# static fields
.field public static final instance:Ljava8/util/stream/Collectors$$Lambda$20;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava8/util/stream/Collectors$$Lambda$20;

    invoke-direct {v0}, Ljava8/util/stream/Collectors$$Lambda$20;-><init>()V

    sput-object v0, Ljava8/util/stream/Collectors$$Lambda$20;->instance:Ljava8/util/stream/Collectors$$Lambda$20;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Ljava8/util/function/BiConsumer;
    .locals 1

    sget-object v0, Ljava8/util/stream/Collectors$$Lambda$20;->instance:Ljava8/util/stream/Collectors$$Lambda$20;

    return-object v0
.end method


# virtual methods
.method public accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava8/util/StringJoiner;

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Ljava8/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava8/util/StringJoiner;

    return-void
.end method
