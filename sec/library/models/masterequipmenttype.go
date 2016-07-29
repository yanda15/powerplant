package models

import (
	"sync"

	"github.com/eaciit/orm"
)

type MasterEquipmentType struct {
	sync.RWMutex
	orm.ModelBase `bson:"-" json:"-"`
	Type          string `bson:"Type" json:"Type"`
	Description   string `bson:"FLDescription" json:"Description"`
}

func (m *MasterEquipmentType) TableName() string {
	return "MasterEquipmentType"
}
