.class public Lcom/samsung/android/ui/picker/app/SeslColorPickerDialog;
.super Lcom/samsung/android/ui/app/SeslAlertDialog;
.source "SeslColorPickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/ui/picker/app/SeslColorPickerDialog$OnColorSetListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SeslColorPickerDialog"


# instance fields
.field private final mColorPicker:Lcom/samsung/android/ui/picker/widget/SeslColorPicker;

.field private mCurrentColor:Ljava/lang/Integer;

.field private final mOnColorSetListener:Lcom/samsung/android/ui/picker/app/SeslColorPickerDialog$OnColorSetListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/ui/picker/app/SeslColorPickerDialog$OnColorSetListener;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/samsung/android/ui/picker/app/SeslColorPickerDialog$OnColorSetListener;

    .line 36
    invoke-static {p1}, Lcom/samsung/android/ui/picker/app/SeslColorPickerDialog;->resolveDialogTheme(Landroid/content/Context;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/ui/app/SeslAlertDialog;-><init>(Landroid/content/Context;I)V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/ui/picker/app/SeslColorPickerDialog;->mCurrentColor:Ljava/lang/Integer;

    .line 38
    invoke-virtual {p0}, Lcom/samsung/android/ui/picker/app/SeslColorPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 39
    .local v1, "var3":Landroid/content/Context;
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    check-cast v0, Landroid/view/ViewGroup;

    const v3, 0x7f0c0090

    invoke-virtual {v2, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 40
    .local v0, "var4":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/picker/app/SeslColorPickerDialog;->setView(Landroid/view/View;)V

    .line 41
    const v2, 0x7f0f0125

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {p0, v3, v2, p0}, Lcom/samsung/android/ui/picker/app/SeslColorPickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 42
    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x2

    invoke-virtual {p0, v3, v2, p0}, Lcom/samsung/android/ui/picker/app/SeslColorPickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 43
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/samsung/android/ui/picker/app/SeslColorPickerDialog;->requestWindowFeature(I)Z

    .line 44
    invoke-virtual {p0}, Lcom/samsung/android/ui/picker/app/SeslColorPickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 45
    iput-object p2, p0, Lcom/samsung/android/ui/picker/app/SeslColorPickerDialog;->mOnColorSetListener:Lcom/samsung/android/ui/picker/app/SeslColorPickerDialog$OnColorSetListener;

    .line 46
    const v2, 0x7f0901bd

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;

    iput-object v2, p0, Lcom/samsung/android/ui/picker/app/SeslColorPickerDialog;->mColorPicker:Lcom/samsung/android/ui/picker/widget/SeslColorPicker;

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/ui/picker/app/SeslColorPickerDialog$OnColorSetListener;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/samsung/android/ui/picker/app/SeslColorPickerDialog$OnColorSetListener;
    .param p3, "currentColor"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/ui/picker/app/SeslColorPickerDialog;-><init>(Landroid/content/Context;Lcom/samsung/android/ui/picker/app/SeslColorPickerDialog$OnColorSetListener;)V

    .line 51
    iget-object v0, p0, Lcom/samsung/android/ui/picker/app/SeslColorPickerDialog;->mColorPicker:Lcom/samsung/android/ui/picker/widget/SeslColorPicker;

    invoke-virtual {v0}, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->getRecentColorInfo()Lcom/samsung/android/ui/picker/widget/SeslRecentColorInfo;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/picker/widget/SeslRecentColorInfo;->setCurrentColor(Ljava/lang/Integer;)V

    .line 52
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/ui/picker/app/SeslColorPickerDialog;->mCurrentColor:Ljava/lang/Integer;

    .line 53
    iget-object v0, p0, Lcom/samsung/android/ui/picker/app/SeslColorPickerDialog;->mColorPicker:Lcom/samsung/android/ui/picker/widget/SeslColorPicker;

    invoke-virtual {v0}, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->updateRecentColorLayout()V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/ui/picker/app/SeslColorPickerDialog$OnColorSetListener;I[I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/samsung/android/ui/picker/app/SeslColorPickerDialog$OnColorSetListener;
    .param p3, "currentColor"    # I
    .param p4, "recentColors"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/ui/picker/app/SeslColorPickerDialog;-><init>(Landroid/content/Context;Lcom/samsung/android/ui/picker/app/SeslColorPickerDialog$OnColorSetListener;)V

    .line 58
    iget-object v0, p0, Lcom/samsung/android/ui/picker/app/SeslColorPickerDialog;->mColorPicker:Lcom/samsung/android/ui/picker/widget/SeslColorPicker;

    invoke-virtual {v0}, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->getRecentColorInfo()Lcom/samsung/android/ui/picker/widget/SeslRecentColorInfo;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/samsung/android/ui/picker/widget/SeslRecentColorInfo;->initRecentColorInfo([I)V

    .line 59
    iget-object v0, p0, Lcom/samsung/android/ui/picker/app/SeslColorPickerDialog;->mColorPicker:Lcom/samsung/android/ui/picker/widget/SeslColorPicker;

    invoke-virtual {v0}, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->getRecentColorInfo()Lcom/samsung/android/ui/picker/widget/SeslRecentColorInfo;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/picker/widget/SeslRecentColorInfo;->setCurrentColor(Ljava/lang/Integer;)V

    .line 60
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/ui/picker/app/SeslColorPickerDialog;->mCurrentColor:Ljava/lang/Integer;

    .line 61
    iget-object v0, p0, Lcom/samsung/android/ui/picker/app/SeslColorPickerDialog;->mColorPicker:Lcom/samsung/android/ui/picker/widget/SeslColorPicker;

    invoke-virtual {v0}, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->updateRecentColorLayout()V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/ui/picker/app/SeslColorPickerDialog$OnColorSetListener;[I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/samsung/android/ui/picker/app/SeslColorPickerDialog$OnColorSetListener;
    .param p3, "recentColors"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/ui/picker/app/SeslColorPickerDialog;-><init>(Landroid/content/Context;Lcom/samsung/android/ui/picker/app/SeslColorPickerDialog$OnColorSetListener;)V

    .line 66
    iget-object v0, p0, Lcom/samsung/android/ui/picker/app/SeslColorPickerDialog;->mColorPicker:Lcom/samsung/android/ui/picker/widget/SeslColorPicker;

    invoke-virtual {v0}, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->getRecentColorInfo()Lcom/samsung/android/ui/picker/widget/SeslRecentColorInfo;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/samsung/android/ui/picker/widget/SeslRecentColorInfo;->initRecentColorInfo([I)V

    .line 67
    iget-object v0, p0, Lcom/samsung/android/ui/picker/app/SeslColorPickerDialog;->mColorPicker:Lcom/samsung/android/ui/picker/widget/SeslColorPicker;

    invoke-virtual {v0}, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->updateRecentColorLayout()V

    .line 68
    return-void
.end method

.method private static resolveDialogTheme(Landroid/content/Context;)I
    .locals 4
    .param p0, "var0"    # Landroid/content/Context;

    .line 71
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 72
    .local v0, "var1":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x7f0401ce

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 74
    iget v1, v0, Landroid/util/TypedValue;->data:I

    if-eqz v1, :cond_0

    .line 75
    const v1, 0x7f10030b

    .local v1, "var2":I
    goto :goto_0

    .line 77
    .end local v1    # "var2":I
    :cond_0
    const v1, 0x7f10030a

    .line 80
    .restart local v1    # "var2":I
    :goto_0
    return v1
.end method


# virtual methods
.method public getColorPicker()Lcom/samsung/android/ui/picker/widget/SeslColorPicker;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/samsung/android/ui/picker/app/SeslColorPickerDialog;->mColorPicker:Lcom/samsung/android/ui/picker/widget/SeslColorPicker;

    return-object v0
.end method

.method public onAttachedToWindow()V
    .locals 0

    .line 88
    invoke-super {p0}, Lcom/samsung/android/ui/app/SeslAlertDialog;->onAttachedToWindow()V

    .line 89
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "var1"    # Landroid/content/DialogInterface;
    .param p2, "var2"    # I

    .line 92
    const/4 v0, -0x2

    if-eq p2, v0, :cond_1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/samsung/android/ui/picker/app/SeslColorPickerDialog;->mColorPicker:Lcom/samsung/android/ui/picker/widget/SeslColorPicker;

    invoke-virtual {v0}, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->saveSelectedColor()V

    .line 94
    iget-object v0, p0, Lcom/samsung/android/ui/picker/app/SeslColorPickerDialog;->mOnColorSetListener:Lcom/samsung/android/ui/picker/app/SeslColorPickerDialog$OnColorSetListener;

    if-eqz v0, :cond_1

    .line 95
    iget-object v0, p0, Lcom/samsung/android/ui/picker/app/SeslColorPickerDialog;->mColorPicker:Lcom/samsung/android/ui/picker/widget/SeslColorPicker;

    invoke-virtual {v0}, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->isUserInputValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/samsung/android/ui/picker/app/SeslColorPickerDialog;->mCurrentColor:Ljava/lang/Integer;

    .line 97
    .local v0, "var3":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 98
    iget-object v1, p0, Lcom/samsung/android/ui/picker/app/SeslColorPickerDialog;->mOnColorSetListener:Lcom/samsung/android/ui/picker/app/SeslColorPickerDialog$OnColorSetListener;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/samsung/android/ui/picker/app/SeslColorPickerDialog$OnColorSetListener;->onColorSet(I)V

    .line 99
    return-void

    .line 103
    .end local v0    # "var3":Ljava/lang/Integer;
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/ui/picker/app/SeslColorPickerDialog;->mOnColorSetListener:Lcom/samsung/android/ui/picker/app/SeslColorPickerDialog$OnColorSetListener;

    iget-object v1, p0, Lcom/samsung/android/ui/picker/app/SeslColorPickerDialog;->mColorPicker:Lcom/samsung/android/ui/picker/widget/SeslColorPicker;

    invoke-virtual {v1}, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->getRecentColorInfo()Lcom/samsung/android/ui/picker/widget/SeslRecentColorInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/ui/picker/widget/SeslRecentColorInfo;->getSelectedColor()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/samsung/android/ui/picker/app/SeslColorPickerDialog$OnColorSetListener;->onColorSet(I)V

    .line 107
    :cond_1
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .line 110
    invoke-super {p0}, Lcom/samsung/android/ui/app/SeslAlertDialog;->onDetachedFromWindow()V

    .line 111
    return-void
.end method

.method public setNewColor(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "var1"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/samsung/android/ui/picker/app/SeslColorPickerDialog;->mColorPicker:Lcom/samsung/android/ui/picker/widget/SeslColorPicker;

    invoke-virtual {v0}, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->getRecentColorInfo()Lcom/samsung/android/ui/picker/widget/SeslRecentColorInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/ui/picker/widget/SeslRecentColorInfo;->setNewColor(Ljava/lang/Integer;)V

    .line 115
    iget-object v0, p0, Lcom/samsung/android/ui/picker/app/SeslColorPickerDialog;->mColorPicker:Lcom/samsung/android/ui/picker/widget/SeslColorPicker;

    invoke-virtual {v0}, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->updateRecentColorLayout()V

    .line 116
    return-void
.end method

.method public setTransparencyControlEnabled(Z)V
    .locals 1
    .param p1, "var1"    # Z

    .line 119
    iget-object v0, p0, Lcom/samsung/android/ui/picker/app/SeslColorPickerDialog;->mColorPicker:Lcom/samsung/android/ui/picker/widget/SeslColorPicker;

    invoke-virtual {v0, p1}, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->setOpacityBarEnabled(Z)V

    .line 120
    return-void
.end method
