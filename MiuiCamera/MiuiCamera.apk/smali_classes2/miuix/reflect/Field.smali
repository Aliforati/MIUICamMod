.class public Lmiuix/reflect/Field;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final BOOLEAN_SIGNATURE_PRIMITIVE:Ljava/lang/String; = "Z"

.field public static final BYTE_SIGNATURE_PRIMITIVE:Ljava/lang/String; = "B"

.field public static final CHAR_SIGNATURE_PRIMITIVE:Ljava/lang/String; = "C"

.field public static final DOUBLE_SIGNATURE_PRIMITIVE:Ljava/lang/String; = "D"

.field public static final FLOAT_SIGNATURE_PRIMITIVE:Ljava/lang/String; = "F"

.field public static final INT_SIGNATURE_PRIMITIVE:Ljava/lang/String; = "I"

.field public static final LONG_SIGNATURE_PRIMITIVE:Ljava/lang/String; = "J"

.field public static final SHORT_SIGNATURE_PRIMITIVE:Ljava/lang/String; = "S"

.field public static final VOID_SIGNATURE_PRIMITIVE:Ljava/lang/String; = "V"


# instance fields
.field public mPtr:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lmiuix/reflect/Field;->mPtr:J

    return-void
.end method

.method public static of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Lmiuix/reflect/Field;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lmiuix/reflect/Field;"
        }
    .end annotation

    invoke-static {p2}, Lmiuix/reflect/ReflectUtils;->getSignature(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lmiuix/os/Native;->getField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiuix/reflect/Field;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiuix/reflect/Field;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lmiuix/reflect/Field;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lmiuix/os/Native;->getField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiuix/reflect/Field;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmiuix/reflect/Field;
    .locals 0

    invoke-static {p0, p1, p2}, Lmiuix/os/Native;->getField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmiuix/reflect/Field;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/lang/reflect/Field;)Lmiuix/reflect/Field;
    .locals 0

    invoke-static {p0}, Lmiuix/os/Native;->getField(Ljava/lang/reflect/Field;)Lmiuix/reflect/Field;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lmiuix/os/Native;->getObjectFieldValue(Lmiuix/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getBoolean(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lmiuix/os/Native;->getBooleanFieldValue(Lmiuix/reflect/Field;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getByte(Ljava/lang/Object;)B
    .locals 0

    invoke-static {p0, p1}, Lmiuix/os/Native;->getByteFieldValue(Lmiuix/reflect/Field;Ljava/lang/Object;)B

    move-result p1

    return p1
.end method

.method public getChar(Ljava/lang/Object;)C
    .locals 0

    invoke-static {p0, p1}, Lmiuix/os/Native;->getCharFieldValue(Lmiuix/reflect/Field;Ljava/lang/Object;)C

    move-result p1

    return p1
.end method

.method public getDouble(Ljava/lang/Object;)D
    .locals 2

    invoke-static {p0, p1}, Lmiuix/os/Native;->getDoubleFieldValue(Lmiuix/reflect/Field;Ljava/lang/Object;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat(Ljava/lang/Object;)F
    .locals 0

    invoke-static {p0, p1}, Lmiuix/os/Native;->getFloatFieldValue(Lmiuix/reflect/Field;Ljava/lang/Object;)F

    move-result p1

    return p1
.end method

.method public getInt(Ljava/lang/Object;)I
    .locals 0

    invoke-static {p0, p1}, Lmiuix/os/Native;->getIntFieldValue(Lmiuix/reflect/Field;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getLong(Ljava/lang/Object;)J
    .locals 2

    invoke-static {p0, p1}, Lmiuix/os/Native;->getLongFieldValue(Lmiuix/reflect/Field;Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getShort(Ljava/lang/Object;)S
    .locals 0

    invoke-static {p0, p1}, Lmiuix/os/Native;->getShortFieldValue(Lmiuix/reflect/Field;Ljava/lang/Object;)S

    move-result p1

    return p1
.end method

.method public set(Ljava/lang/Object;B)V
    .locals 0

    invoke-static {p0, p1, p2}, Lmiuix/os/Native;->setFieldValue(Lmiuix/reflect/Field;Ljava/lang/Object;B)V

    return-void
.end method

.method public set(Ljava/lang/Object;C)V
    .locals 0

    invoke-static {p0, p1, p2}, Lmiuix/os/Native;->setFieldValue(Lmiuix/reflect/Field;Ljava/lang/Object;C)V

    return-void
.end method

.method public set(Ljava/lang/Object;D)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lmiuix/os/Native;->setFieldValue(Lmiuix/reflect/Field;Ljava/lang/Object;D)V

    return-void
.end method

.method public set(Ljava/lang/Object;F)V
    .locals 0

    invoke-static {p0, p1, p2}, Lmiuix/os/Native;->setFieldValue(Lmiuix/reflect/Field;Ljava/lang/Object;F)V

    return-void
.end method

.method public set(Ljava/lang/Object;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lmiuix/os/Native;->setFieldValue(Lmiuix/reflect/Field;Ljava/lang/Object;I)V

    return-void
.end method

.method public set(Ljava/lang/Object;J)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lmiuix/os/Native;->setFieldValue(Lmiuix/reflect/Field;Ljava/lang/Object;J)V

    return-void
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lmiuix/os/Native;->setFieldValue(Lmiuix/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public set(Ljava/lang/Object;S)V
    .locals 0

    invoke-static {p0, p1, p2}, Lmiuix/os/Native;->setFieldValue(Lmiuix/reflect/Field;Ljava/lang/Object;S)V

    return-void
.end method

.method public set(Ljava/lang/Object;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lmiuix/os/Native;->setFieldValue(Lmiuix/reflect/Field;Ljava/lang/Object;Z)V

    return-void
.end method

.method public toReflect()Ljava/lang/reflect/Field;
    .locals 1

    invoke-static {p0}, Lmiuix/os/Native;->getReflectField(Lmiuix/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v0

    return-object v0
.end method
