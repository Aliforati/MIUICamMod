.class public final enum LOooO0O0/OooO00o/OooO00o/OooOo/OooO00o;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LOooO0O0/OooO00o/OooO00o/OooOo/OooO00o;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum OooO0O0:LOooO0O0/OooO00o/OooO00o/OooOo/OooO00o;

.field public static final enum OooO0OO:LOooO0O0/OooO00o/OooO00o/OooOo/OooO00o;

.field public static final synthetic OooO0Oo:[LOooO0O0/OooO00o/OooO00o/OooOo/OooO00o;


# instance fields
.field public final OooO00o:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, LOooO0O0/OooO00o/OooO00o/OooOo/OooO00o;

    const/4 v1, 0x0

    const-string v2, "JSON"

    const-string v3, ".json"

    invoke-direct {v0, v2, v1, v3}, LOooO0O0/OooO00o/OooO00o/OooOo/OooO00o;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LOooO0O0/OooO00o/OooO00o/OooOo/OooO00o;->OooO0O0:LOooO0O0/OooO00o/OooO00o/OooOo/OooO00o;

    new-instance v0, LOooO0O0/OooO00o/OooO00o/OooOo/OooO00o;

    const/4 v2, 0x1

    const-string v3, "ZIP"

    const-string v4, ".zip"

    invoke-direct {v0, v3, v2, v4}, LOooO0O0/OooO00o/OooO00o/OooOo/OooO00o;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LOooO0O0/OooO00o/OooO00o/OooOo/OooO00o;->OooO0OO:LOooO0O0/OooO00o/OooO00o/OooOo/OooO00o;

    const/4 v3, 0x2

    new-array v3, v3, [LOooO0O0/OooO00o/OooO00o/OooOo/OooO00o;

    sget-object v4, LOooO0O0/OooO00o/OooO00o/OooOo/OooO00o;->OooO0O0:LOooO0O0/OooO00o/OooO00o/OooOo/OooO00o;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, LOooO0O0/OooO00o/OooO00o/OooOo/OooO00o;->OooO0Oo:[LOooO0O0/OooO00o/OooO00o/OooOo/OooO00o;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, LOooO0O0/OooO00o/OooO00o/OooOo/OooO00o;->OooO00o:Ljava/lang/String;

    return-void
.end method

.method public static OooO00o(Ljava/lang/String;)LOooO0O0/OooO00o/OooO00o/OooOo/OooO00o;
    .locals 5

    invoke-static {}, LOooO0O0/OooO00o/OooO00o/OooOo/OooO00o;->values()[LOooO0O0/OooO00o/OooO00o/OooOo/OooO00o;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v4, v3, LOooO0O0/OooO00o/OooO00o/OooOo/OooO00o;->OooO00o:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to find correct extension for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LOooO0O0/OooO00o/OooO00o/OooOoO/OooO0Oo;->OooO0O0(Ljava/lang/String;)V

    sget-object p0, LOooO0O0/OooO00o/OooO00o/OooOo/OooO00o;->OooO0O0:LOooO0O0/OooO00o/OooO00o/OooOo/OooO00o;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)LOooO0O0/OooO00o/OooO00o/OooOo/OooO00o;
    .locals 1

    const-class v0, LOooO0O0/OooO00o/OooO00o/OooOo/OooO00o;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LOooO0O0/OooO00o/OooO00o/OooOo/OooO00o;

    return-object p0
.end method

.method public static values()[LOooO0O0/OooO00o/OooO00o/OooOo/OooO00o;
    .locals 1

    sget-object v0, LOooO0O0/OooO00o/OooO00o/OooOo/OooO00o;->OooO0Oo:[LOooO0O0/OooO00o/OooO00o/OooOo/OooO00o;

    invoke-virtual {v0}, [LOooO0O0/OooO00o/OooO00o/OooOo/OooO00o;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LOooO0O0/OooO00o/OooO00o/OooOo/OooO00o;

    return-object v0
.end method


# virtual methods
.method public OooO00o()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ".temp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LOooO0O0/OooO00o/OooO00o/OooOo/OooO00o;->OooO00o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOo/OooO00o;->OooO00o:Ljava/lang/String;

    return-object v0
.end method
