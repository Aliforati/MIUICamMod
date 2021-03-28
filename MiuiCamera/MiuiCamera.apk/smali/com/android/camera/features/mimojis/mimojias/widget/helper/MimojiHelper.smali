.class public Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final BG:Ljava/lang/String; = "camera/xiaomi_bg_cam.bundle"

.field public static final BG_DEFAULT:Ljava/lang/String; = "default_bg.bundle"

.field public static final BG_SCALE:Ljava/lang/String; = "camera/xiaomi_bg_camscale1.6.bundle"

.field public static final BQ_SCALE:Ljava/lang/String; = "camera/xiaomi_cam_bq1.6.bundle"

.field public static final CARTOON_JSON:Ljava/lang/String; = "cartoon.json"

.field public static final COLOR_FormatI420:I = 0x1

.field public static final COLOR_FormatNV21:I = 0x2

.field public static CREATE_ITEM_DOWNLOAD:Ljava/lang/String; = null

.field public static final CREATE_MODLE_CACHE_DIR:Ljava/lang/String;

.field public static final CREATE_MODLE_PATH:Ljava/lang/String;

.field public static final CUSTOM_DIR:Ljava/lang/String;

.field public static final DATA_DIR:Ljava/lang/String;

.field public static final DELETE_GIF:I = 0x4

.field public static final DELETE_MIMOJI_ALL:I = 0x0

.field public static final DELETE_MIMOJI_CREATE:I = 0x3

.field public static final DELETE_MIMOJI_EMOTICON:I = 0x2

.field public static final DELETE_MIMOJI_VIDEO:I = 0x1

.field public static EDIT_ITEM_DOWNLOAD:Ljava/lang/String; = null

.field public static final EMOTICON_CACHE_DIR:Ljava/lang/String;

.field public static final EMOTICON_GIF_CACHE_DIR:Ljava/lang/String;

.field public static final EMOTICON_JPEG_CACHE_DIR:Ljava/lang/String;

.field public static final EMOTICON_MP4_CACHE_DIR:Ljava/lang/String;

.field public static final FACE:Ljava/lang/String; = "face/D001.bundle"

.field public static final FEMALE_HAIR:Ljava/lang/String; = "hair/female/C001.bundle"

.field public static final GIF_CACHE_DIR:Ljava/lang/String;

.field public static final GIF_NORMAL_CACHE_FILE:Ljava/lang/String;

.field public static final HEAD:Ljava/lang/String; = "xiaomi_male.bundle"

.field public static final HUMAN_DESC:[I

.field public static final HUMAN_JSON:Ljava/lang/String; = "human.json"

.field public static final ITEM_THUMBNAIL:Ljava/lang/String; = "originPhoto.jpg"

.field public static final LIGHT_ANIMOJI:Ljava/lang/String; = "light/animal_light_v2.bundle"

.field public static final LIGHT_NROMAL:Ljava/lang/String; = "light/light04.bundle"

.field public static final LIPLASH:Ljava/lang/String; = "makeup/xiaomi_liplash.bundle"

.field public static final MALE_HAIR:Ljava/lang/String; = "hair/male/B001.bundle"

.field public static final MATERIAL_PATH:Ljava/lang/String;

.field public static final MIMOJI_DIR:Ljava/lang/String;

.field public static final MIMOJI_PREFIX:Ljava/lang/String; = "vendor/camera/mimoji/"

.field public static final MIMOJI_PREFIX_FOR_SYSTEM:Ljava/lang/String; = ""

.field public static final MODEL_PATH:Ljava/lang/String;

.field public static final ORIENTATION_HYSTERESIS:I = 0x5

.field public static final ROOT_DIR:Ljava/lang/String;

.field public static final SHADER_CACHE_DIR:Ljava/lang/String;

.field public static final TEMPLATE_PATH:Ljava/lang/String;

.field public static final VIDEO_CACHE_DIR:Ljava/lang/String;

.field public static final VIDEO_DEAL_CACHE_FILE:Ljava/lang/String;

.field public static final VIDEO_NORMAL_CACHE_FILE:Ljava/lang/String;

.field public static biziIconCam:Ljava/lang/String;

.field public static controllerConfigIconPath:Ljava/lang/String;

.field public static controllerConfigPath:Ljava/lang/String;

.field public static controllerPath:Ljava/lang/String;

.field public static ershiIconCam:Ljava/lang/String;

.field public static faceCapturePath:Ljava/lang/String;

.field public static gifBackgroundColor:[D

.field public static final human:[I

.field public static huziIconCam:Ljava/lang/String;

.field public static iconBackgroundColor:[D

.field public static jiemaoIconCam:Ljava/lang/String;

.field public static lianxingIconCam:Ljava/lang/String;

.field public static mCurrentOrientation:I

.field public static quebanIconCam:Ljava/lang/String;

.field public static renouIconCam:Ljava/lang/String;

.field public static toufaIconCam:Ljava/lang/String;

.field public static toushiIconCam:Ljava/lang/String;

.field public static yanjingIconCam:Ljava/lang/String;

.field public static zuichunIconCam:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/MIUI/Camera/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/camera/module/impl/component/FileUtils;->ROOT_DIR:Ljava/lang/String;

    :goto_0
    sput-object v0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->ROOT_DIR:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->ROOT_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mimoji/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->MIMOJI_DIR:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->MIMOJI_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "template/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->TEMPLATE_PATH:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->TEMPLATE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "material/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->MATERIAL_PATH:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->TEMPLATE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "create/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->CREATE_MODLE_PATH:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->MIMOJI_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->DATA_DIR:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->MIMOJI_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "model/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->MODEL_PATH:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->ROOT_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "custom/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->CUSTOM_DIR:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->MIMOJI_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "shader/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->SHADER_CACHE_DIR:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->MIMOJI_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->VIDEO_CACHE_DIR:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->VIDEO_CACHE_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mimoji_normal.mp4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->VIDEO_NORMAL_CACHE_FILE:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->VIDEO_CACHE_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mimoji_deal.mp4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->VIDEO_DEAL_CACHE_FILE:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->TEMPLATE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "temp_create/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->CREATE_MODLE_CACHE_DIR:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->MIMOJI_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "gif"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->GIF_CACHE_DIR:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->GIF_CACHE_DIR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "gif_normal.mp4"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->GIF_NORMAL_CACHE_FILE:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->MIMOJI_DIR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "emoticon"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->EMOTICON_CACHE_DIR:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->EMOTICON_CACHE_DIR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mp4"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->EMOTICON_MP4_CACHE_DIR:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->EMOTICON_CACHE_DIR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->EMOTICON_GIF_CACHE_DIR:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->EMOTICON_CACHE_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "jpeg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->EMOTICON_JPEG_CACHE_DIR:Ljava/lang/String;

    const-string v0, "ai_face_processor_xiaomi.bundle"

    sput-object v0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->faceCapturePath:Ljava/lang/String;

    const-string v0, "controller_cpp.bundle"

    sput-object v0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->controllerPath:Ljava/lang/String;

    const-string v0, "others/controller_config.bundle"

    sput-object v0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->controllerConfigPath:Ljava/lang/String;

    const-string v0, "others/controller_config_for_icon_scene.bundle"

    sput-object v0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->controllerConfigIconPath:Ljava/lang/String;

    const-string v0, "camera/icon_cam/cam_renou.bundle"

    sput-object v0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->renouIconCam:Ljava/lang/String;

    const-string v0, "camera/icon_cam/cam_bizi.bundle"

    sput-object v0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->biziIconCam:Ljava/lang/String;

    const-string v0, "camera/icon_cam/cam_lianxing.bundle"

    sput-object v0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->lianxingIconCam:Ljava/lang/String;

    const-string v0, "camera/icon_cam/cam_ershi.bundle"

    sput-object v0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->ershiIconCam:Ljava/lang/String;

    const-string v0, "camera/icon_cam/cam_huzi.bundle"

    sput-object v0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->huziIconCam:Ljava/lang/String;

    const-string v0, "camera/icon_cam/cam_jiemao.bundle"

    sput-object v0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->jiemaoIconCam:Ljava/lang/String;

    const-string v0, "camera/icon_cam/cam_queban.bundle"

    sput-object v0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->quebanIconCam:Ljava/lang/String;

    const-string v0, "camera/icon_cam/cam_toufa.bundle"

    sput-object v0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->toufaIconCam:Ljava/lang/String;

    const-string v0, "camera/icon_cam/cam_toushi.bundle"

    sput-object v0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->toushiIconCam:Ljava/lang/String;

    const-string v0, "camera/icon_cam/cam_yanjing.bundle"

    sput-object v0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->yanjingIconCam:Ljava/lang/String;

    const-string v0, "camera/icon_cam/cam_zuichun.bundle"

    sput-object v0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->zuichunIconCam:Ljava/lang/String;

    const-string v0, "create_item_download"

    sput-object v0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->CREATE_ITEM_DOWNLOAD:Ljava/lang/String;

    const-string v0, "edit_item_download"

    sput-object v0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->EDIT_ITEM_DOWNLOAD:Ljava/lang/String;

    const/4 v0, 0x4

    new-array v1, v0, [D

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->iconBackgroundColor:[D

    new-array v0, v0, [D

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->gifBackgroundColor:[D

    const/16 v0, 0x9

    new-array v1, v0, [I

    fill-array-data v1, :array_2

    sput-object v1, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->human:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->HUMAN_DESC:[I

    const/4 v0, -0x1

    sput v0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->mCurrentOrientation:I

    return-void

    nop

    :array_0
    .array-data 8
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 8
        0x406fe00000000000L    # 255.0
        0x406fe00000000000L    # 255.0
        0x406fe00000000000L    # 255.0
        0x406fe00000000000L    # 255.0
    .end array-data

    :array_2
    .array-data 4
        0x4
        0x5
        0x6
        0x7
        0x2
        0x3
        0x0
        0x1
        0x8
    .end array-data

    :array_3
    .array-data 4
        0x7f1003f8
        0x7f1003ff
        0x7f100400
        0x7f1003f9
        0x7f1003fe
        0x7f1003fd
        0x7f1003fc
        0x7f1003fa
        0x7f1003fb
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDataFromImage(Landroid/media/Image;I)[B
    .locals 20

    move/from16 v0, p1

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "only support COLOR_FormatI420 and COLOR_FormatNV21"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getCropRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getFormat()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v7

    mul-int v8, v5, v6

    invoke-static {v4}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v4

    mul-int/2addr v4, v8

    div-int/lit8 v4, v4, 0x8

    new-array v4, v4, [B

    const/4 v9, 0x0

    aget-object v10, v7, v9

    invoke-virtual {v10}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v10

    new-array v10, v10, [B

    move v13, v2

    move v11, v9

    move v12, v11

    :goto_1
    array-length v14, v7

    if-ge v11, v14, :cond_d

    if-eqz v11, :cond_6

    if-eq v11, v2, :cond_4

    if-eq v11, v1, :cond_2

    goto :goto_3

    :cond_2
    if-ne v0, v2, :cond_3

    int-to-double v12, v8

    const-wide/high16 v14, 0x3ff4000000000000L    # 1.25

    mul-double/2addr v12, v14

    double-to-int v12, v12

    move v13, v2

    goto :goto_3

    :cond_3
    if-ne v0, v1, :cond_7

    move v13, v1

    goto :goto_2

    :cond_4
    if-ne v0, v2, :cond_5

    move v13, v2

    :goto_2
    move v12, v8

    goto :goto_3

    :cond_5
    if-ne v0, v1, :cond_7

    add-int/lit8 v12, v8, 0x1

    move v13, v1

    goto :goto_3

    :cond_6
    move v13, v2

    move v12, v9

    :cond_7
    :goto_3
    aget-object v14, v7, v11

    invoke-virtual {v14}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v14

    aget-object v15, v7, v11

    invoke-virtual {v15}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v15

    aget-object v16, v7, v11

    invoke-virtual/range {v16 .. v16}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v1

    if-nez v11, :cond_8

    move/from16 v16, v9

    goto :goto_4

    :cond_8
    move/from16 v16, v2

    :goto_4
    shr-int v9, v5, v16

    shr-int v2, v6, v16

    iget v0, v3, Landroid/graphics/Rect;->top:I

    shr-int v0, v0, v16

    mul-int/2addr v0, v15

    move/from16 v18, v5

    iget v5, v3, Landroid/graphics/Rect;->left:I

    shr-int v5, v5, v16

    mul-int/2addr v5, v1

    add-int/2addr v0, v5

    invoke-virtual {v14, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v0, 0x0

    :goto_5
    if-ge v0, v2, :cond_c

    const/4 v5, 0x1

    if-ne v1, v5, :cond_9

    if-ne v13, v5, :cond_9

    invoke-virtual {v14, v4, v12, v9}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    add-int/2addr v12, v9

    move-object/from16 v17, v3

    move v3, v9

    goto :goto_7

    :cond_9
    add-int/lit8 v16, v9, -0x1

    mul-int v16, v16, v1

    move-object/from16 v17, v3

    add-int/lit8 v3, v16, 0x1

    const/4 v5, 0x0

    invoke-virtual {v14, v10, v5, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    :goto_6
    if-ge v5, v9, :cond_a

    mul-int v19, v5, v1

    aget-byte v19, v10, v19

    aput-byte v19, v4, v12

    add-int/2addr v12, v13

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_a
    :goto_7
    add-int/lit8 v5, v2, -0x1

    if-ge v0, v5, :cond_b

    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int/2addr v5, v15

    sub-int/2addr v5, v3

    invoke-virtual {v14, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_b
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v3, v17

    goto :goto_5

    :cond_c
    move-object/from16 v17, v3

    add-int/lit8 v11, v11, 0x1

    move/from16 v0, p1

    move/from16 v5, v18

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v9, 0x0

    goto/16 :goto_1

    :cond_d
    return-object v4
.end method

.method public static getMimoji1List()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;",
            ">;"
        }
    .end annotation

    const-string v0, "/"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;

    invoke-direct {v2}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;-><init>()V

    const-string v3, "close_state"

    iput-object v3, v2, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mConfigPath:Ljava/lang/String;

    const-wide v3, 0x7fffffffffffffffL

    iput-wide v3, v2, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mDirectoryName:J

    const v5, 0x7f10034e

    iput v5, v2, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mName:I

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;

    invoke-direct {v2}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;-><init>()V

    const-string v5, "add_state"

    iput-object v5, v2, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mConfigPath:Ljava/lang/String;

    iput-wide v3, v2, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mDirectoryName:J

    const v3, 0x7f10001e

    iput v3, v2, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mName:I

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/io/File;

    sget-object v5, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->CUSTOM_DIR:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    array-length v5, v4

    move v6, v3

    :goto_0
    if-ge v6, v5, :cond_1

    aget-object v7, v4, v6

    new-instance v8, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;

    invoke-direct {v8}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;-><init>()V

    sget-object v9, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->TEMPLATE_PATH_HUMAN:Ljava/lang/String;

    iput-object v9, v8, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mAvatarTemplatePath:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "config.dat"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "pic.png"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->CUSTOM_DIR:Ljava/lang/String;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->CUSTOM_DIR:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7}, Lcom/android/camera/module/impl/component/FileUtils;->checkFileConsist(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-static {v11}, Lcom/android/camera/module/impl/component/FileUtils;->checkFileConsist(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    iput-object v7, v8, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mConfigPath:Ljava/lang/String;

    iput-object v11, v8, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mThumbnailUrl:Ljava/lang/String;

    iput-object v10, v8, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mPackPath:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    iput-wide v9, v8, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mDirectoryName:J

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_2
    new-instance v0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;

    invoke-direct {v0}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;-><init>()V

    sget-object v4, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->PigTemplatePath:Ljava/lang/String;

    iput-object v4, v0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mAvatarTemplatePath:Ljava/lang/String;

    const-string v4, "pig"

    iput-object v4, v0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mConfigPath:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->DATA_DIR:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/pig.png"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mThumbnailUrl:Ljava/lang/String;

    const v4, 0x7f1003b9

    iput v4, v0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mName:I

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-boolean v0, LOooO0O0/OooO0o0/OooO00o/OooO0OO;->OooOo0:Z

    if-nez v0, :cond_3

    sget-boolean v0, LOooO0O0/OooO0o0/OooO00o/OooO0OO;->OooOo0O:Z

    if-nez v0, :cond_3

    sget-boolean v0, LOooO0O0/OooO0o0/OooO00o/OooO0OO;->OooOo0o:Z

    if-eqz v0, :cond_4

    :cond_3
    new-instance v0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;

    invoke-direct {v0}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;-><init>()V

    sget-object v4, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->RoyanTemplatePath:Ljava/lang/String;

    iput-object v4, v0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mAvatarTemplatePath:Ljava/lang/String;

    const-string/jumbo v4, "royan"

    iput-object v4, v0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mConfigPath:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->DATA_DIR:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/royan.png"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mThumbnailUrl:Ljava/lang/String;

    const v4, 0x7f1003b5

    iput v4, v0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mName:I

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    new-instance v0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;

    invoke-direct {v0}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;-><init>()V

    sget-object v4, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->BearTemplatePath:Ljava/lang/String;

    iput-object v4, v0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mAvatarTemplatePath:Ljava/lang/String;

    const-string v4, "bear"

    iput-object v4, v0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mConfigPath:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->DATA_DIR:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/bear.png"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mThumbnailUrl:Ljava/lang/String;

    const v4, 0x7f1003af

    iput v4, v0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mName:I

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;

    invoke-direct {v0}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;-><init>()V

    sget-object v4, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->RabbitTemplatePath:Ljava/lang/String;

    iput-object v4, v0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mAvatarTemplatePath:Ljava/lang/String;

    const-string/jumbo v4, "rabbit"

    iput-object v4, v0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mConfigPath:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->DATA_DIR:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/rabbit.png"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mThumbnailUrl:Ljava/lang/String;

    const v4, 0x7f1003ba

    iput v4, v0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mName:I

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_5

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/module/impl/component/FileUtils;->deleteFile(Ljava/lang/String;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    return-object v1
.end method

.method public static getMimojiCartoonList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    new-instance v1, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;

    invoke-direct {v1}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;-><init>()V

    const-string v2, "close_state"

    iput-object v2, v1, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mConfigPath:Ljava/lang/String;

    const-wide v2, 0x7fffffffffffffffL

    iput-wide v2, v1, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mDirectoryName:J

    const v2, 0x7f10034e

    iput v2, v1, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mName:I

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;

    invoke-direct {v1}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;-><init>()V

    sget-object v2, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->TEMPLATE_PATH_CAT:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mAvatarTemplatePath:Ljava/lang/String;

    const-string v2, "cat"

    iput-object v2, v1, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mConfigPath:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->DATA_DIR:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "cat.png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mThumbnailUrl:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->DATA_DIR:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "cat1.png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mThumbnailUrl2:Ljava/lang/String;

    const v2, 0x7f1003b0

    iput v2, v1, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mName:I

    const v2, 0x7f1003b1

    iput v2, v1, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mName2:I

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->setDefaultFrame(I)V

    invoke-virtual {v1, v2}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->setFrame(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;

    invoke-direct {v1}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;-><init>()V

    sget-object v3, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->TEMPLATE_PATH_FROG:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mAvatarTemplatePath:Ljava/lang/String;

    const-string v3, "frog"

    iput-object v3, v1, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mConfigPath:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->DATA_DIR:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "frog.png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mThumbnailUrl:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->DATA_DIR:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "frog1.png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mThumbnailUrl2:Ljava/lang/String;

    const v3, 0x7f1003b3

    iput v3, v1, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mName:I

    const v3, 0x7f1003b4

    iput v3, v1, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mName2:I

    invoke-virtual {v1, v2}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->setDefaultFrame(I)V

    invoke-virtual {v1, v2}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->setFrame(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;

    invoke-direct {v1}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;-><init>()V

    sget-object v3, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->TEMPLATE_PATH_RABBIT2:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mAvatarTemplatePath:Ljava/lang/String;

    const-string/jumbo v3, "rabbit2"

    iput-object v3, v1, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mConfigPath:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->DATA_DIR:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "rabbit.png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mThumbnailUrl:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->DATA_DIR:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "rabbit1.png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mThumbnailUrl2:Ljava/lang/String;

    const v3, 0x7f1003ba

    iput v3, v1, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mName:I

    const v3, 0x7f1003bb

    iput v3, v1, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mName2:I

    invoke-virtual {v1, v2}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->setDefaultFrame(I)V

    invoke-virtual {v1, v2}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->setFrame(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;

    invoke-direct {v1}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;-><init>()V

    sget-object v2, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->TEMPLATE_PATH_BEAR:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mAvatarTemplatePath:Ljava/lang/String;

    const-string v2, "bear"

    iput-object v2, v1, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mConfigPath:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->DATA_DIR:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "bear.png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mThumbnailUrl:Ljava/lang/String;

    const v2, 0x7f1003af

    iput v2, v1, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mName:I

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public static getMimojiHumanList()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;",
            ">;"
        }
    .end annotation

    const-string v0, "/"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;

    invoke-direct {v2}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;-><init>()V

    const-string v3, "close_state"

    iput-object v3, v2, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mConfigPath:Ljava/lang/String;

    const-wide v3, 0x7fffffffffffffffL

    iput-wide v3, v2, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mDirectoryName:J

    const v5, 0x7f10034e

    iput v5, v2, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mName:I

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;

    invoke-direct {v2}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;-><init>()V

    const-string v5, "add_state"

    iput-object v5, v2, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mConfigPath:Ljava/lang/String;

    iput-wide v3, v2, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mDirectoryName:J

    const v3, 0x7f10001e

    iput v3, v2, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mName:I

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->CUSTOM_DIR:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    array-length v4, v3

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_1

    aget-object v7, v3, v6

    new-instance v8, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;

    invoke-direct {v8}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;-><init>()V

    sget-object v9, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->TEMPLATE_PATH_HUMAN:Ljava/lang/String;

    iput-object v9, v8, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mAvatarTemplatePath:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "config.dat"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "pic.png"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->CUSTOM_DIR:Ljava/lang/String;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->CUSTOM_DIR:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7}, Lcom/android/camera/module/impl/component/FileUtils;->checkFileConsist(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-static {v11}, Lcom/android/camera/module/impl/component/FileUtils;->checkFileConsist(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    iput-object v7, v8, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mConfigPath:Ljava/lang/String;

    iput-object v11, v8, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mThumbnailUrl:Ljava/lang/String;

    iput-object v10, v8, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mPackPath:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    iput-wide v9, v8, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mDirectoryName:J

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->CONFIG_PATH_PRE_HUMAN:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_5

    move v3, v5

    :goto_2
    sget-object v4, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->human:[I

    array-length v4, v4

    if-ge v3, v4, :cond_4

    new-instance v4, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;

    invoke-direct {v4}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;-><init>()V

    sget-object v6, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->TEMPLATE_PATH_HUMAN:Ljava/lang/String;

    iput-object v6, v4, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mAvatarTemplatePath:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "preconfig"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->CONFIG_PATH_PRE_HUMAN:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ".dat"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->CONFIG_PATH_PRE_HUMAN:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".png"

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7}, Lcom/android/camera/module/impl/component/FileUtils;->checkFileConsist(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v6}, Lcom/android/camera/module/impl/component/FileUtils;->checkFileConsist(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    iput-object v7, v4, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mConfigPath:Ljava/lang/String;

    iput-object v7, v4, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mPackPath:Ljava/lang/String;

    iput-object v6, v4, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mThumbnailUrl:Ljava/lang/String;

    sget-object v6, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->HUMAN_DESC:[I

    aget v6, v6, v3

    iput v6, v4, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mName:I

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->setIsPreHuman(Z)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    :cond_5
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v5, v0, :cond_6

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/module/impl/component/FileUtils;->deleteFile(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mimoji getMimojiHumanList[] Exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MimojiHelper"

    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-object v1
.end method

.method public static getOutlineOrientation(IIZ)I
    .locals 1

    sget v0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->mCurrentOrientation:I

    invoke-static {p1, v0}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->roundOrientation(II)I

    move-result p1

    sput p1, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->mCurrentOrientation:I

    if-eqz p2, :cond_0

    sub-int p1, p0, p1

    add-int/lit16 p1, p1, 0x168

    goto :goto_0

    :cond_0
    add-int/2addr p1, p0

    :goto_0
    rem-int/lit16 p1, p1, 0x168

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "cameraRotation = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " sensorOrientation = "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->mCurrentOrientation:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "outlineOrientation = "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "OrientationUtil"

    invoke-static {p2, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method public static getThumbnailBitmapFromData([BII)Landroid/graphics/Bitmap;
    .locals 1

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    return-object p1
.end method

.method public static getTipsResId(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 p0, -0x1

    return p0

    :pswitch_1
    const p0, 0x7f1003c2

    return p0

    :pswitch_2
    const p0, 0x7f1003bd

    return p0

    :pswitch_3
    const p0, 0x7f1003be

    return p0

    :pswitch_4
    const p0, 0x7f1003c3

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static getTipsResIdFace(I)I
    .locals 1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x7

    if-eq p0, v0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    const p0, 0x7f1003c1

    goto :goto_0

    :cond_1
    const p0, 0x7f1003c0

    goto :goto_0

    :cond_2
    const p0, 0x7f1003bf

    :goto_0
    return p0
.end method

.method public static roundOrientation(II)I
    .locals 3

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    sub-int v1, p0, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    rsub-int v2, v1, 0x168

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/16 v2, 0x32

    if-lt v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    add-int/lit8 p0, p0, 0x2d

    div-int/lit8 p0, p0, 0x5a

    mul-int/lit8 p0, p0, 0x5a

    rem-int/lit16 p0, p0, 0x168

    return p0

    :cond_2
    return p1
.end method

.method public static simpleVerificationMaterial()Z
    .locals 4

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->MATERIAL_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string v2, "face"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    const-string v3, "hair"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
