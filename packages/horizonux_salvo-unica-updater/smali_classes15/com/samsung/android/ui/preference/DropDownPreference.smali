.class public Lcom/samsung/android/ui/preference/DropDownPreference;
.super Lcom/samsung/android/ui/preference/SeslListPreference;
.source "DropDownPreference.java"


# instance fields
.field private final mAdapter:Landroid/widget/ArrayAdapter;

.field private final mContext:Landroid/content/Context;

.field private final mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mSpinner:Landroidx/appcompat/widget/SeslAppCompatSpinner;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/ui/preference/DropDownPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 38
    const v0, 0x7f040142

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/ui/preference/DropDownPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/ui/preference/DropDownPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/ui/preference/SeslListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 100
    new-instance v0, Lcom/samsung/android/ui/preference/DropDownPreference$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/ui/preference/DropDownPreference$1;-><init>(Lcom/samsung/android/ui/preference/DropDownPreference;)V

    iput-object v0, p0, Lcom/samsung/android/ui/preference/DropDownPreference;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 47
    iput-object p1, p0, Lcom/samsung/android/ui/preference/DropDownPreference;->mContext:Landroid/content/Context;

    .line 48
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/DropDownPreference;->createAdapter()Landroid/widget/ArrayAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/ui/preference/DropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 49
    invoke-direct {p0}, Lcom/samsung/android/ui/preference/DropDownPreference;->updateEntries()V

    .line 50
    return-void
.end method

.method private updateEntries()V
    .locals 6

    .line 62
    iget-object v0, p0, Lcom/samsung/android/ui/preference/DropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 63
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/DropDownPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/DropDownPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 65
    .local v3, "c":Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/samsung/android/ui/preference/DropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 64
    .end local v3    # "c":Ljava/lang/CharSequence;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 68
    :cond_0
    return-void
.end method


# virtual methods
.method protected createAdapter()Landroid/widget/ArrayAdapter;
    .locals 3

    .line 58
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/samsung/android/ui/preference/DropDownPreference;->mContext:Landroid/content/Context;

    const v2, 0x7f0c00a9

    invoke-direct {v0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public findSpinnerIndexOfValue(Ljava/lang/String;)I
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .line 71
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/DropDownPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 72
    .local v0, "entryValues":[Ljava/lang/CharSequence;
    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    .line 73
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 74
    aget-object v2, v0, v1

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 75
    return v1

    .line 73
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 79
    .end local v1    # "i":I
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method protected notifyChanged()V
    .locals 1

    .line 84
    invoke-super {p0}, Lcom/samsung/android/ui/preference/SeslListPreference;->notifyChanged()V

    .line 85
    iget-object v0, p0, Lcom/samsung/android/ui/preference/DropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 86
    return-void
.end method

.method public onBindViewHolder(Lcom/samsung/android/ui/preference/PreferenceViewHolder;)V
    .locals 2
    .param p1, "view"    # Lcom/samsung/android/ui/preference/PreferenceViewHolder;

    .line 89
    iget-object v0, p1, Lcom/samsung/android/ui/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f0901d8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SeslAppCompatSpinner;

    iput-object v0, p0, Lcom/samsung/android/ui/preference/DropDownPreference;->mSpinner:Landroidx/appcompat/widget/SeslAppCompatSpinner;

    .line 90
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SeslAppCompatSpinner;->setSoundEffectsEnabled(Z)V

    .line 91
    iget-object v0, p0, Lcom/samsung/android/ui/preference/DropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/samsung/android/ui/preference/DropDownPreference;->mSpinner:Landroidx/appcompat/widget/SeslAppCompatSpinner;

    invoke-virtual {v1}, Landroidx/appcompat/widget/SeslAppCompatSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/samsung/android/ui/preference/DropDownPreference;->mSpinner:Landroidx/appcompat/widget/SeslAppCompatSpinner;

    iget-object v1, p0, Lcom/samsung/android/ui/preference/DropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SeslAppCompatSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/ui/preference/DropDownPreference;->mSpinner:Landroidx/appcompat/widget/SeslAppCompatSpinner;

    iget-object v1, p0, Lcom/samsung/android/ui/preference/DropDownPreference;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SeslAppCompatSpinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 95
    iget-object v0, p0, Lcom/samsung/android/ui/preference/DropDownPreference;->mSpinner:Landroidx/appcompat/widget/SeslAppCompatSpinner;

    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/DropDownPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/ui/preference/DropDownPreference;->findSpinnerIndexOfValue(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SeslAppCompatSpinner;->setSelection(I)V

    .line 96
    invoke-super {p0, p1}, Lcom/samsung/android/ui/preference/SeslListPreference;->onBindViewHolder(Lcom/samsung/android/ui/preference/PreferenceViewHolder;)V

    .line 97
    return-void
.end method

.method protected onClick()V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/samsung/android/ui/preference/DropDownPreference;->mSpinner:Landroidx/appcompat/widget/SeslAppCompatSpinner;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SeslAppCompatSpinner;->performClick()Z

    .line 55
    return-void
.end method
