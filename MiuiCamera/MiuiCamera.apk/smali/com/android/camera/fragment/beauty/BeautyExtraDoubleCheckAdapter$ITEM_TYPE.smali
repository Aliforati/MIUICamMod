.class public final enum Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter$ITEM_TYPE;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ITEM_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter$ITEM_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter$ITEM_TYPE;

.field public static final enum ITEM_TYPE_BACK:Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter$ITEM_TYPE;

.field public static final enum ITEM_TYPE_NORMAL:Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter$ITEM_TYPE;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter$ITEM_TYPE;

    const/4 v1, 0x0

    const-string v2, "ITEM_TYPE_NORMAL"

    invoke-direct {v0, v2, v1}, Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter$ITEM_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter$ITEM_TYPE;->ITEM_TYPE_NORMAL:Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter$ITEM_TYPE;

    new-instance v0, Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter$ITEM_TYPE;

    const/4 v2, 0x1

    const-string v3, "ITEM_TYPE_BACK"

    invoke-direct {v0, v3, v2}, Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter$ITEM_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter$ITEM_TYPE;->ITEM_TYPE_BACK:Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter$ITEM_TYPE;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter$ITEM_TYPE;

    sget-object v4, Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter$ITEM_TYPE;->ITEM_TYPE_NORMAL:Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter$ITEM_TYPE;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter$ITEM_TYPE;->$VALUES:[Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter$ITEM_TYPE;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter$ITEM_TYPE;
    .locals 1

    const-class v0, Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter$ITEM_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter$ITEM_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter$ITEM_TYPE;
    .locals 1

    sget-object v0, Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter$ITEM_TYPE;->$VALUES:[Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter$ITEM_TYPE;

    invoke-virtual {v0}, [Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter$ITEM_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter$ITEM_TYPE;

    return-object v0
.end method
