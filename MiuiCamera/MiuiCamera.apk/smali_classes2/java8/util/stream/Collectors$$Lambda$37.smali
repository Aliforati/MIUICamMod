.class public final synthetic Ljava8/util/stream/Collectors$$Lambda$37;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava8/util/function/Supplier;


# static fields
.field public static final instance:Ljava8/util/stream/Collectors$$Lambda$37;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava8/util/stream/Collectors$$Lambda$37;

    invoke-direct {v0}, Ljava8/util/stream/Collectors$$Lambda$37;-><init>()V

    sput-object v0, Ljava8/util/stream/Collectors$$Lambda$37;->instance:Ljava8/util/stream/Collectors$$Lambda$37;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Ljava8/util/function/Supplier;
    .locals 1

    sget-object v0, Ljava8/util/stream/Collectors$$Lambda$37;->instance:Ljava8/util/stream/Collectors$$Lambda$37;

    return-object v0
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Ljava8/util/stream/Collectors;->lambda$summingDouble$28()[D

    move-result-object v0

    return-object v0
.end method
