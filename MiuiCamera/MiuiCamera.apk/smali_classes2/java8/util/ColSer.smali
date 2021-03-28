.class public final Ljava8/util/ColSer;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final IMM_LIST:I = 0x1

.field public static final IMM_MAP:I = 0x3

.field public static final IMM_SET:I = 0x2

.field public static final serialVersionUID:J = 0x578eabb63a1ba811L


# instance fields
.field public transient array:[Ljava/lang/Object;

.field public final tag:I


# direct methods
.method public varargs constructor <init>(I[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ljava8/util/ColSer;->tag:I

    iput-object p2, p0, Ljava8/util/ColSer;->array:[Ljava/lang/Object;

    return-void
.end method

.method public static ioe(Ljava/lang/RuntimeException;)Ljava/io/InvalidObjectException;
    .locals 2

    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "invalid object"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/io/InvalidObjectException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    if-ltz v0, :cond_1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iput-object v1, p0, Ljava8/util/ColSer;->array:[Ljava/lang/Object;

    return-void

    :cond_1
    new-instance p1, Ljava/io/InvalidObjectException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "negative length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 5

    :try_start_0
    iget-object v0, p0, Ljava8/util/ColSer;->array:[Ljava/lang/Object;

    if-eqz v0, :cond_5

    iget v0, p0, Ljava8/util/ColSer;->tag:I

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Ljava8/util/ColSer;->array:[Ljava/lang/Object;

    array-length v0, v0

    if-nez v0, :cond_0

    sget-object v0, Ljava8/util/ImmutableCollections;->EMPTY_MAP:Ljava8/util/ImmutableCollections$MapN;

    return-object v0

    :cond_0
    iget-object v0, p0, Ljava8/util/ColSer;->array:[Ljava/lang/Object;

    array-length v0, v0

    if-ne v0, v2, :cond_1

    new-instance v0, Ljava8/util/ImmutableCollections$Map1;

    iget-object v2, p0, Ljava8/util/ColSer;->array:[Ljava/lang/Object;

    aget-object v2, v2, v4

    iget-object v3, p0, Ljava8/util/ColSer;->array:[Ljava/lang/Object;

    aget-object v1, v3, v1

    invoke-direct {v0, v2, v1}, Ljava8/util/ImmutableCollections$Map1;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_1
    new-instance v0, Ljava8/util/ImmutableCollections$MapN;

    iget-object v1, p0, Ljava8/util/ColSer;->array:[Ljava/lang/Object;

    invoke-direct {v0, v1}, Ljava8/util/ImmutableCollections$MapN;-><init>([Ljava/lang/Object;)V

    return-object v0

    :cond_2
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v2, "invalid flags 0x%x"

    new-array v1, v1, [Ljava/lang/Object;

    iget v3, p0, Ljava8/util/ColSer;->tag:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v4

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v0, p0, Ljava8/util/ColSer;->array:[Ljava/lang/Object;

    invoke-static {v0}, Ljava8/util/Sets;->of([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0

    :cond_4
    iget-object v0, p0, Ljava8/util/ColSer;->array:[Ljava/lang/Object;

    invoke-static {v0}, Ljava8/util/Lists;->of([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_5
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "null array"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Ljava8/util/ColSer;->ioe(Ljava/lang/RuntimeException;)Ljava/io/InvalidObjectException;

    move-result-object v0

    throw v0

    :catch_1
    move-exception v0

    invoke-static {v0}, Ljava8/util/ColSer;->ioe(Ljava/lang/RuntimeException;)Ljava/io/InvalidObjectException;

    move-result-object v0

    throw v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    iget-object v0, p0, Ljava8/util/ColSer;->array:[Ljava/lang/Object;

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ljava8/util/ColSer;->array:[Ljava/lang/Object;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
