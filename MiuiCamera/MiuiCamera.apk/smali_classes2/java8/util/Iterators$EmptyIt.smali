.class public final Ljava8/util/Iterators$EmptyIt;
.super Ljava8/util/Iterators$ImmutableIt;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/Iterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EmptyIt"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava8/util/Iterators$ImmutableIt<",
        "TE;>;"
    }
.end annotation


# static fields
.field public static final EMPTY_ITERATOR:Ljava8/util/Iterators$EmptyIt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava8/util/Iterators$EmptyIt<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava8/util/Iterators$EmptyIt;

    invoke-direct {v0}, Ljava8/util/Iterators$EmptyIt;-><init>()V

    sput-object v0, Ljava8/util/Iterators$EmptyIt;->EMPTY_ITERATOR:Ljava8/util/Iterators$EmptyIt;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava8/util/Iterators$ImmutableIt;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
