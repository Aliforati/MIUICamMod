.class public Lmiuix/reflect/Constructor;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public mPtr:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lmiuix/reflect/Constructor;->mPtr:J

    return-void
.end method

.method public static of(Ljava/lang/Class;Ljava/lang/String;)Lmiuix/reflect/Constructor;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Lmiuix/reflect/Constructor;"
        }
    .end annotation

    invoke-static {p0, p1}, Lmiuix/os/Native;->getConstructor(Ljava/lang/Class;Ljava/lang/String;)Lmiuix/reflect/Constructor;

    move-result-object p0

    return-object p0
.end method

.method public static varargs of(Ljava/lang/Class;[Ljava/lang/Class;)Lmiuix/reflect/Constructor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;)",
            "Lmiuix/reflect/Constructor;"
        }
    .end annotation

    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-static {p1, v0}, Lmiuix/reflect/ReflectUtils;->getSignature([Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lmiuix/os/Native;->getConstructor(Ljava/lang/Class;Ljava/lang/String;)Lmiuix/reflect/Constructor;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/lang/String;Ljava/lang/String;)Lmiuix/reflect/Constructor;
    .locals 0

    invoke-static {p0, p1}, Lmiuix/os/Native;->getConstructor(Ljava/lang/String;Ljava/lang/String;)Lmiuix/reflect/Constructor;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/lang/reflect/Constructor;)Lmiuix/reflect/Constructor;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor<",
            "*>;)",
            "Lmiuix/reflect/Constructor;"
        }
    .end annotation

    invoke-static {p0}, Lmiuix/os/Native;->getConstructor(Ljava/lang/reflect/Constructor;)Lmiuix/reflect/Constructor;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public varargs newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lmiuix/os/Native;->newInstance(Lmiuix/reflect/Constructor;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toRefelect()Ljava/lang/reflect/Constructor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation

    invoke-static {p0}, Lmiuix/os/Native;->getReflectConstructor(Lmiuix/reflect/Constructor;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method
