.class public Ljava8/util/ImmutableCollections$Set12$1;
.super Ljava8/util/Iterators$ImmutableIt;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava8/util/ImmutableCollections$Set12;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava8/util/Iterators$ImmutableIt<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public idx:I

.field public final synthetic this$0:Ljava8/util/ImmutableCollections$Set12;


# direct methods
.method public constructor <init>(Ljava8/util/ImmutableCollections$Set12;)V
    .locals 1

    iput-object p1, p0, Ljava8/util/ImmutableCollections$Set12$1;->this$0:Ljava8/util/ImmutableCollections$Set12;

    invoke-direct {p0}, Ljava8/util/Iterators$ImmutableIt;-><init>()V

    iget-object p1, p0, Ljava8/util/ImmutableCollections$Set12$1;->this$0:Ljava8/util/ImmutableCollections$Set12;

    iget-object p1, p1, Ljava8/util/ImmutableCollections$Set12;->e1:Ljava/lang/Object;

    sget-object v0, Ljava8/util/ImmutableCollections;->EMPTY:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    iput p1, p0, Ljava8/util/ImmutableCollections$Set12$1;->idx:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget v0, p0, Ljava8/util/ImmutableCollections$Set12$1;->idx:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget v0, p0, Ljava8/util/ImmutableCollections$Set12$1;->idx:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    iput v0, p0, Ljava8/util/ImmutableCollections$Set12$1;->idx:I

    sget-boolean v0, Ljava8/util/ImmutableCollections;->REVERSE:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Ljava8/util/ImmutableCollections$Set12$1;->this$0:Ljava8/util/ImmutableCollections$Set12;

    iget-object v0, v0, Ljava8/util/ImmutableCollections$Set12;->e1:Ljava/lang/Object;

    sget-object v1, Ljava8/util/ImmutableCollections;->EMPTY:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Ljava8/util/ImmutableCollections$Set12$1;->this$0:Ljava8/util/ImmutableCollections$Set12;

    iget-object v0, v0, Ljava8/util/ImmutableCollections$Set12;->e0:Ljava/lang/Object;

    :cond_1
    return-object v0

    :cond_2
    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    iput v1, p0, Ljava8/util/ImmutableCollections$Set12$1;->idx:I

    sget-boolean v0, Ljava8/util/ImmutableCollections;->REVERSE:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Ljava8/util/ImmutableCollections$Set12$1;->this$0:Ljava8/util/ImmutableCollections$Set12;

    iget-object v0, v0, Ljava8/util/ImmutableCollections$Set12;->e1:Ljava/lang/Object;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Ljava8/util/ImmutableCollections$Set12$1;->this$0:Ljava8/util/ImmutableCollections$Set12;

    iget-object v0, v0, Ljava8/util/ImmutableCollections$Set12;->e0:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_4
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
