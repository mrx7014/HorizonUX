.class Lcom/samsung/android/ui/picker/widget/SeslOpacitySeekBar;
.super Lcom/samsung/android/ui/widget/SeslSeekBar;
.source "SeslOpacitySeekBar.java"


# static fields
.field private static final SEEKBAR_MAX_VALUE:I = 0xff

.field private static final TAG:Ljava/lang/String; = "SeslOpacitySeekBar"


# instance fields
.field private mColors:[I

.field private mProgressDrawable:Landroid/graphics/drawable/GradientDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "var1"    # Landroid/content/Context;
    .param p2, "var2"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/ui/widget/SeslSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/samsung/android/ui/picker/widget/SeslOpacitySeekBar;->mColors:[I

    .line 34
    return-void

    :array_0
    .array-data 4
        -0x1
        -0x1000000
    .end array-data
.end method

.method private initColor(I)V
    .locals 4
    .param p1, "var1"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 37
    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 38
    .local v0, "var2":[F
    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 39
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    .line 40
    iget-object v1, p0, Lcom/samsung/android/ui/picker/widget/SeslOpacitySeekBar;->mColors:[I

    const/4 v2, 0x0

    invoke-static {v2, v0}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v3

    aput v3, v1, v2

    .line 41
    iget-object v1, p0, Lcom/samsung/android/ui/picker/widget/SeslOpacitySeekBar;->mColors:[I

    const/16 v2, 0xff

    invoke-static {v2, v0}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v2

    const/4 v3, 0x1

    aput v2, v1, v3

    .line 42
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/picker/widget/SeslOpacitySeekBar;->setProgress(I)V

    .line 43
    return-void
.end method


# virtual methods
.method changeColorBase(I)V
    .locals 3
    .param p1, "var1"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/samsung/android/ui/picker/widget/SeslOpacitySeekBar;->mProgressDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 47
    .local v0, "var2":Landroid/graphics/drawable/GradientDrawable;
    if-eqz v0, :cond_0

    .line 48
    iget-object v1, p0, Lcom/samsung/android/ui/picker/widget/SeslOpacitySeekBar;->mColors:[I

    .line 49
    .local v1, "var3":[I
    const/4 v2, 0x1

    aput p1, v1, v2

    .line 50
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    .line 51
    iget-object v2, p0, Lcom/samsung/android/ui/picker/widget/SeslOpacitySeekBar;->mProgressDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0, v2}, Lcom/samsung/android/ui/picker/widget/SeslOpacitySeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 52
    invoke-virtual {p0}, Lcom/samsung/android/ui/picker/widget/SeslOpacitySeekBar;->getMax()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/ui/picker/widget/SeslOpacitySeekBar;->setProgress(I)V

    .line 55
    .end local v1    # "var3":[I
    :cond_0
    return-void
.end method

.method init(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "var1"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 58
    const/16 v0, 0xff

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/picker/widget/SeslOpacitySeekBar;->setMax(I)V

    .line 59
    if-eqz p1, :cond_0

    .line 60
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/ui/picker/widget/SeslOpacitySeekBar;->initColor(I)V

    .line 63
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/ui/picker/widget/SeslOpacitySeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0800e9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    iput-object v0, p0, Lcom/samsung/android/ui/picker/widget/SeslOpacitySeekBar;->mProgressDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 64
    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/picker/widget/SeslOpacitySeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 65
    invoke-virtual {p0}, Lcom/samsung/android/ui/picker/widget/SeslOpacitySeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800eb

    invoke-virtual {p0}, Lcom/samsung/android/ui/picker/widget/SeslOpacitySeekBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/picker/widget/SeslOpacitySeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 66
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/picker/widget/SeslOpacitySeekBar;->setThumbOffset(I)V

    .line 67
    return-void
.end method

.method restoreColor(I)V
    .locals 2
    .param p1, "var1"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 70
    invoke-direct {p0, p1}, Lcom/samsung/android/ui/picker/widget/SeslOpacitySeekBar;->initColor(I)V

    .line 71
    iget-object v0, p0, Lcom/samsung/android/ui/picker/widget/SeslOpacitySeekBar;->mProgressDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget-object v1, p0, Lcom/samsung/android/ui/picker/widget/SeslOpacitySeekBar;->mColors:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    .line 72
    iget-object v0, p0, Lcom/samsung/android/ui/picker/widget/SeslOpacitySeekBar;->mProgressDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/picker/widget/SeslOpacitySeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 73
    return-void
.end method
