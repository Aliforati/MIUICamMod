.class public final enum Lmiuix/io/ResettableInputStream$Type;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/io/ResettableInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmiuix/io/ResettableInputStream$Type;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lmiuix/io/ResettableInputStream$Type;

.field public static final enum Asset:Lmiuix/io/ResettableInputStream$Type;

.field public static final enum ByteArray:Lmiuix/io/ResettableInputStream$Type;

.field public static final enum File:Lmiuix/io/ResettableInputStream$Type;

.field public static final enum Uri:Lmiuix/io/ResettableInputStream$Type;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lmiuix/io/ResettableInputStream$Type;

    const/4 v1, 0x0

    const-string v2, "File"

    invoke-direct {v0, v2, v1}, Lmiuix/io/ResettableInputStream$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiuix/io/ResettableInputStream$Type;->File:Lmiuix/io/ResettableInputStream$Type;

    new-instance v0, Lmiuix/io/ResettableInputStream$Type;

    const/4 v2, 0x1

    const-string v3, "Uri"

    invoke-direct {v0, v3, v2}, Lmiuix/io/ResettableInputStream$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiuix/io/ResettableInputStream$Type;->Uri:Lmiuix/io/ResettableInputStream$Type;

    new-instance v0, Lmiuix/io/ResettableInputStream$Type;

    const/4 v3, 0x2

    const-string v4, "Asset"

    invoke-direct {v0, v4, v3}, Lmiuix/io/ResettableInputStream$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiuix/io/ResettableInputStream$Type;->Asset:Lmiuix/io/ResettableInputStream$Type;

    new-instance v0, Lmiuix/io/ResettableInputStream$Type;

    const/4 v4, 0x3

    const-string v5, "ByteArray"

    invoke-direct {v0, v5, v4}, Lmiuix/io/ResettableInputStream$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiuix/io/ResettableInputStream$Type;->ByteArray:Lmiuix/io/ResettableInputStream$Type;

    const/4 v5, 0x4

    new-array v5, v5, [Lmiuix/io/ResettableInputStream$Type;

    sget-object v6, Lmiuix/io/ResettableInputStream$Type;->File:Lmiuix/io/ResettableInputStream$Type;

    aput-object v6, v5, v1

    sget-object v1, Lmiuix/io/ResettableInputStream$Type;->Uri:Lmiuix/io/ResettableInputStream$Type;

    aput-object v1, v5, v2

    sget-object v1, Lmiuix/io/ResettableInputStream$Type;->Asset:Lmiuix/io/ResettableInputStream$Type;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lmiuix/io/ResettableInputStream$Type;->$VALUES:[Lmiuix/io/ResettableInputStream$Type;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmiuix/io/ResettableInputStream$Type;
    .locals 1

    const-class v0, Lmiuix/io/ResettableInputStream$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lmiuix/io/ResettableInputStream$Type;

    return-object p0
.end method

.method public static values()[Lmiuix/io/ResettableInputStream$Type;
    .locals 1

    sget-object v0, Lmiuix/io/ResettableInputStream$Type;->$VALUES:[Lmiuix/io/ResettableInputStream$Type;

    invoke-virtual {v0}, [Lmiuix/io/ResettableInputStream$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiuix/io/ResettableInputStream$Type;

    return-object v0
.end method
