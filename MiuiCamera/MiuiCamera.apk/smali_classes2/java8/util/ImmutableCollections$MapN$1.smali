.class public Ljava8/util/ImmutableCollections$MapN$1;
.super Ljava/util/AbstractSet;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava8/util/ImmutableCollections$MapN;->entrySet()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Ljava8/util/ImmutableCollections$MapN;


# direct methods
.method public constructor <init>(Ljava8/util/ImmutableCollections$MapN;)V
    .locals 0

    iput-object p1, p0, Ljava8/util/ImmutableCollections$MapN$1;->this$0:Ljava8/util/ImmutableCollections$MapN;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    new-instance v0, Ljava8/util/ImmutableCollections$MapN$MapNIterator;

    iget-object v1, p0, Ljava8/util/ImmutableCollections$MapN$1;->this$0:Ljava8/util/ImmutableCollections$MapN;

    invoke-direct {v0, v1}, Ljava8/util/ImmutableCollections$MapN$MapNIterator;-><init>(Ljava8/util/ImmutableCollections$MapN;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Ljava8/util/ImmutableCollections$MapN$1;->this$0:Ljava8/util/ImmutableCollections$MapN;

    iget v0, v0, Ljava8/util/ImmutableCollections$MapN;->size:I

    return v0
.end method
